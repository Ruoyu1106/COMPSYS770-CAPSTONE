/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"

int tare_flag = 0;
int check = 0;
double tare_offset = 0.0;
bool tare_status = false;
enum states {idle, not_ready, ready, tare_initialized, receive_data, send_data};    // initialize states for the FSM

// ISR for tare button GP20 -> tare switch
void tare_ISR(unsigned int gpio, uint32_t events) {

    tare_flag = 1;

    printf("\nTare interrupt occurred at PIN %d with event %d\n", gpio, events);  // print to terminal
}

void init_button() {
    gpio_init(TARE_BUTTON);
    gpio_set_dir(TARE_BUTTON, GPIO_IN); // bit 2 is set falling edge, edge low so == 4 and bit 3 set for rising edge == 8
    gpio_pull_up(TARE_BUTTON);
    gpio_set_irq_enabled_with_callback(TARE_BUTTON, 0x04, 1, tare_ISR);  // attach interrupt to tare button pin
}

bool get_tare_status() {
    return tare_status;
}

void update_tare(bool status) {
    tare_status = status;
}

void init_tare() {
    tare_status = false;
}
void update_tare_offset(double x) {
    // if (x < tare_offset) {
    //     tare_offset = tare_offset + x;
    // } else {
    //     tare_offset = x;
    // }
    // tare_offset = tare_offset + x;
    tare_offset = x;
}

double get_tare_offset() {
    return tare_offset;
}


int main() {
    stdio_init_all();
    printf("ADC Example, measuring GPIO26\n");

    adc_init();

    // Make sure GPIO is high-impedance, no pullups etc
    adc_gpio_init(26);
    // Select ADC input 0 (GPIO26)
    adc_select_input(0);

    init_button(); // initialize button ISR
    
    update_tare(false);
    sleep_ms(2000);
    tare_flag = 0;

    while (1) {
        // 12-bit conversion, assume max value == ADC_VREF == 3.3 V
        const float conversion_factor = 3.3f / (1 << 12);
        float sum = 0;
        for (i = 1; i <= 10; i++) {
            uint16_t result = adc_read();
            float sum += result * conversion_factor;
            sleep_ms(100);
        }
        float average = sum / 10;
        printf("Raw value: 0x%03x, voltage: %f V\n", result, result * conversion_factor);
        printf("Average voltage: %f V\n", average);
    }


}

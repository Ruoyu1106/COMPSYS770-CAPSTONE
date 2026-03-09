/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"
#include "pico/cyw43_arch.h"

int main() {
    stdio_init_all();
    printf("Initiate ADC sampling on GPIO26, output and connect to wifi\n");

    adc_init();
    if (cyw43_arch_init()) {
        printf("failed to initialise wifi\n");
        return 1;
    }

    // Enbales Wi-Fi STA (Station) mode.
    cyw43_arch_enable_sta_mode();

    // Make sure GPIO is high-impedance, no pullups etc
    adc_gpio_init(26);
    // Select ADC input 0 (GPIO26)
    adc_select_input(0);

    if (cyw43_arch_wifi_connect_timeout_ms(WIFI_SSID, WIFI_PASSWORD, CYW43_AUTH_WPA2_AES_PSK, 30000)) {
        printf("failed to connect\n");
        return 1;
    }

    while (1) {
        // 12-bit conversion, assume max value == ADC_VREF == 3.3 V
        const float conversion_factor = 3.3f / (1 << 12);
        uint16_t result = adc_read();
        float voltage = result * conversion_factor;
        printf("Raw value: 0x%03x, voltage: %f V\n", result, result * conversion_factor);
        // Conversion to weight
        float weight = voltage * 12.5;
        printf("Weight is: %f \n", weight);
        sleep_ms(500);
    }
}

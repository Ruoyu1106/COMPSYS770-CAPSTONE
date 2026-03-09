# Smart Scale IoT System  
COMPSYS 770 Capstone Project – University of Auckland  

## Overview

Smart Scale is an IoT-based embedded system designed to measure weight data accurately and synchronize it with cloud services in real time.  
The project integrates **embedded hardware control, wireless communication, and backend data processing** to build a reliable sensing and monitoring platform.

The system demonstrates how low-level hardware interaction and software architecture can be combined to create a scalable IoT solution.

This project was developed as part of the **COMPSYS 770 Capstone Project** at the University of Auckland.

---

## System Architecture

The Smart Scale system consists of four main components:

1. **Sensor Layer**
   - Load cell sensors capture weight signals
   - ADC module converts analog signals into digital data

2. **Embedded Control Layer**
   - Microcontroller processes sensor readings
   - Performs signal calibration and filtering
   - Manages memory buffers and data acquisition timing

3. **Communication Layer**
   - Wireless communication protocol for transmitting measurement data
   - Ensures reliable data transfer with minimal packet loss

4. **Cloud / Backend Layer**
   - Receives and processes transmitted data
   - Stores measurements for monitoring and analysis

---

## Key Features

### Accurate Sensor Data Acquisition
- Implemented **low-level sensor acquisition and ADC calibration**
- Reduced measurement noise and improved signal consistency

### Reliable Wireless Communication
- Designed communication protocol for stable wireless transmission
- Ensured minimal packet loss and consistent data integrity

### Real-Time Data Pipeline
- Optimized data acquisition–transmission pipeline
- Reduced system response latency during data bursts

### Memory and Buffer Optimization
- Managed memory buffers to prevent overflow
- Prevented race conditions during high-frequency transmission

### System-Level Architecture Design
- Balanced hardware constraints, network reliability, and backend scalability
- Ensured stable performance under real-time operating conditions

---

## Technologies Used

**Programming Languages**
- C / C++
- Embedded C

**Embedded Systems**
- Microcontroller-based control
- ADC signal processing
- Sensor calibration

**Networking**
- Wireless communication protocol
- IoT data transmission

**System Design**
- Embedded software architecture
- Real-time data processing
- Buffer management and memory control

---

## Repository Structure

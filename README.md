# Smart Home Control System (Flutter & ATmega32 IoT Integration)🏠💡

![Project Banner](https://github.com/user-attachments/assets/61b22193-48d6-4032-9eea-0ba66bfc1e87)  
*The Screenshot Shows Ciruit Simulation on SimulIDE Controlled Via Flutter App*

## Description
This Project presents a Simple Smart Home simulation Integrated with Flutter Framework,
enabling users to control Rooms lighting, a Television, and an Air Conditioner – through a user-friendly Flutter application. 
the Communication between the Flutter app and the simulated smart home is established via a 
virtual COM bridge for real-time app-to-microcontroller communication.

## Features ✨
- **ATmega32 Microcontroller Firmware** (Embedded C)  
  Manages device logic for 3-room lighting, TV power states, and AC thermal regulation
- **Multi-Room Lighting Control**  
  Toggle lights in 3 different rooms
- **Smart AC Management**  
  - Power toggle
  - Temperature setpoint control (15°C-35°C)
  - Hysteresis-based thermal regulation (±1°C)
- **TV Control**  
  Instant power toggle
- **Real-time Feedback**  
  LCD display status updates
- **Serial Communication**  
  UART protocol in Microcontroller Side  
  libserialport Package In Flutter Side  
  VSPD for Windows OR Socat for Linux for A PAIR of Virtual Ports for communication Bridge between Flutter and MCU's UART

## System Architecture 
```mermaid
graph TD
    A[Flutter UI] -->|Virtual Serial Port| B[Microcontroller]
    B --> C[Room 1 LED]
    B --> D[Room 2 LED]
    B --> E[Room 3 LED]
    B --> F[TV LED]
    B --> G[AC Control]
    G --> H[Temperature Sensor]
    B --> I[LCD Display]

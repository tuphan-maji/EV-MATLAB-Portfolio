# UART Communication Using Embedded C

## Objective

The objective of this project is to simulate the transmission of electric vehicle battery parameters over a UART communication interface using Embedded C. The program sends battery voltage, current, temperature, and State of Charge (SOC) data through a serial communication channel. This project demonstrates the basic principle used in Battery Management Systems (BMS) and Vehicle Control Units (VCU) for serial data communication, debugging, and monitoring.

## Theory

UART (Universal Asynchronous Receiver Transmitter) is one of the most widely used serial communication protocols in embedded systems. It enables data exchange between a microcontroller and external devices such as computers, diagnostic tools, communication modules, and display units.

UART communication is asynchronous, meaning that no separate clock signal is required. Both transmitting and receiving devices communicate using an agreed baud rate.

In this project, battery parameters are transmitted using formatted UART messages. The program demonstrates the following embedded concepts:

* Serial data transmission

* Formatted printing using printf()

* Floating-point data handling

* Unsigned integer data handling

* Battery parameter communication

* Real-time debugging concepts

UART is widely used in EV systems for debugging, diagnostics, firmware updates, data logging, and communication with development tools.

## Input Parameters

| Parameter           | Value | Unit |
| ------------------- | ----- | ---- |
| Battery Voltage     | 320.0 | V    |
| Battery Current     | 30.0  | A    |
| Battery Temperature | 32    | °C   |
| Battery SOC         | 82    | %    |

## Embedded C File

UART_Communication.c

## Program Flow

* Start

* Initialize UART communication

* Load battery parameter values

* Format voltage message

* Transmit voltage over UART

* Format current message

* Transmit current over UART

* Format temperature message

* Transmit temperature over UART

* Format SOC message

* Transmit SOC over UART

* End

## Output

The program transmits:

* Battery Voltage

* Battery Current

* Battery Temperature

* Battery State of Charge (SOC)

Sample Output

TX -> Battery Voltage : 320.0 V

TX -> Battery Current : 30.0 A

TX -> Battery Temperature : 32 C

TX -> Battery SOC : 82 %

## Applications

* Battery Management System (BMS)

* Vehicle Control Unit (VCU)

* Serial Debugging

* Automotive Diagnostics

* Data Logging Systems

* Embedded System Development

* EV Monitoring Systems

* Firmware Testing

* Microcontroller-to-PC Communication

## Future Improvements

* Add UART receive functionality.

* Implement baud rate configuration.

* Transmit structured data packets.

* Add checksum verification.

* Integrate with CAN message parser.

* Simulate real-time battery monitoring.

* Interface with an actual microcontroller UART peripheral.

* Store transmitted data in external memory.

## Conclusion

This project successfully demonstrates UART-based serial communication using Embedded C. The program transmits battery voltage, current, temperature, and SOC values through formatted UART messages, providing a clear understanding of serial communication, data formatting, and debugging techniques commonly used in EV and automotive embedded systems.

## Author

Tuphan Maji


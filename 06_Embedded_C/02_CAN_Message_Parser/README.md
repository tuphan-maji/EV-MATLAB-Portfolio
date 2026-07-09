CAN Message Parser Using Embedded C
Objective

The objective of this project is to develop an Embedded C program that receives a CAN data frame, parses the message bytes, and converts them into meaningful battery parameters such as voltage, current, temperature, and State of Charge (SOC). This project demonstrates the basic principle used in Electric Vehicle (EV) Battery Management Systems (BMS) and Vehicle Control Units (VCU) for CAN communication and data decoding.

Theory

The Controller Area Network (CAN) bus is one of the most widely used communication protocols in electric vehicles. It enables reliable communication between electronic control units (ECUs) such as the Battery Management System (BMS), Vehicle Control Unit (VCU), Motor Controller, and Instrument Cluster.

CAN messages contain raw hexadecimal data that must be decoded by software before it can be used. In this project, an 8-byte CAN frame is parsed using Embedded C. The program combines multiple bytes using bitwise operations and applies scaling factors to obtain engineering values.

During CAN message decoding:

Raw hexadecimal data is received from the CAN frame.

Multiple bytes are combined into 16-bit values.

Scaling factors are applied to convert raw data into engineering units.

Battery parameters are displayed for monitoring and diagnostics.

This method is widely used because of its fast computation and suitability for real-time embedded automotive systems.

Mathematical Equations

Battery Voltage

Voltage_raw = (Byte0 << 8) | Byte1

Battery Voltage (V) = Voltage_raw / 10.0

Battery Current

Current_raw = (Byte2 << 8) | Byte3

Battery Current (A) = Current_raw / 10.0

Battery Temperature

Temperature (°C) = Byte4

Battery SOC

SOC (%) = Byte5

Input Parameters

Parameter

	

Value




CAN ID

	

0x180




Byte0

	

0x0C




Byte1

	

0x80




Byte2

	

0x01




Byte3

	

0x2C




Byte4

	

0x20




Byte5

	

0x52




Byte6

	

0x00




Byte7

	

0x00

Embedded C File

CAN_Message_Parser.c

Output

The program calculates:

Battery Voltage (V)

Battery Current (A)

Battery Temperature (°C)

Battery State of Charge (SOC %)

Sample Output:

Battery Voltage = 320.0 V

Battery Current = 30.0 A

Battery Temperature = 32 C

Battery SOC = 82 %

Applications

Battery Management System (BMS)

Vehicle Control Unit (VCU)

Instrument Cluster Communication

Motor Controller Communication

Automotive Diagnostics

Embedded Automotive Software

EV Data Monitoring Systems

Future Improvements

Validate CAN ID before parsing.

Parse multiple CAN frames.

Add fault code decoding.

Implement checksum verification.

Add signed current decoding.

Integrate UART debugging output.

Simulate real-time CAN message reception.

Author

Tuphan Maji

# DC-DC Boost Converter Design Using MATLAB

# Objective

The objective of this project is to design and analyze a **DC-DC Boost Converter** using MATLAB. The program calculates the required converter parameters, including duty cycle, input/output current, inductor value, capacitor value, component ratings, and generates PWM, inductor current, and output voltage waveforms under **Continuous Conduction Mode (CCM)**.

---

## Project Description

A **Boost Converter** is a step-up DC-DC converter that increases a lower DC input voltage to a higher DC output voltage while maintaining high conversion efficiency. It is widely used in Electric Vehicles (EVs), Battery Management Systems (BMS), renewable energy systems, DC power supplies, and industrial power electronics.

This MATLAB program automates the design calculations and provides graphical analysis of the converter's operating characteristics.

---

## Features

- Boost Converter Design Calculator
- Duty Cycle Calculation
- Input and Output Current Calculation
- Load Resistance Calculation
- Inductor Design
- Capacitor Design
- MOSFET Voltage and Current Rating
- Diode Voltage and Current Rating
- PWM Waveform Generation
- Inductor Current Waveform
- Output Voltage Ripple Waveform
- Automatic Graphical Visualization

---

## Working Principle

A Boost Converter operates in two switching states.

### Switch ON

- MOSFET turns ON.
- The inductor stores energy from the input supply.
- The diode remains reverse biased.
- The load is supplied by the output capacitor.

### Switch OFF

- MOSFET turns OFF.
- The inductor releases stored energy.
- The diode becomes forward biased.
- The stored energy is added to the input voltage, producing a higher output voltage.

The output voltage is controlled by varying the PWM duty cycle.

---

## Mathematical Equations

### Duty Cycle

**D = 1 − (Vin / Vo)**

### Output Current

**Io = Po / Vo**

### Input Power

**Pin = Po / Efficiency**

### Input Current

**Iin = Pin / Vin**

### Load Resistance

**R = Vo / Io**

### Inductor Ripple Current

**ΔIL = Ripple × Iin**

### Inductor Value

**L = (Vin × D) / (ΔIL × fs)**

### Output Voltage Ripple

**ΔVo = Ripple × Vo**

### Output Capacitor

**C = (Io × D) / (ΔVo × fs)**

---

## Input Parameters

| Parameter | Value |
|------------|--------|
| Input Voltage | 24 V |
| Output Voltage | 48 V |
| Output Power | 200 W |
| Switching Frequency | 20 kHz |
| Converter Efficiency | 90 % |
| Inductor Ripple | 20 % |
| Output Voltage Ripple | 2 % |

---

## Calculated Parameters

The MATLAB program calculates:

- Duty Cycle
- Input Current
- Output Current
- Input Power
- Load Resistance
- Inductor Ripple Current
- Required Inductor
- Allowed Output Voltage Ripple
- Required Output Capacitor
- MOSFET Voltage Rating
- MOSFET Current Rating
- Diode Voltage Rating
- Diode Current Rating

---

## Generated Waveforms

The program automatically generates the following plots:

### PWM Gate Pulse

- PWM switching signal for the MOSFET.
- Duty cycle based switching operation.

### Inductor Current

- Triangular current waveform.
- Continuous Conduction Mode (CCM) operation.

### Output Voltage

- Regulated boosted output voltage.
- Output voltage ripple visualization.

---

## Expected Results

For the given input parameters:

- Input Voltage = **24 V**
- Output Voltage = **48 V**
- Output Power = **200 W**
- Switching Frequency = **20 kHz**

The program determines:

- Required Duty Cycle
- Required Inductor Value
- Required Capacitor Value
- Component Ratings
- PWM Waveform
- Inductor Current Waveform
- Output Voltage Ripple

---

## Applications

- Electric Vehicles (EV)
- Battery Management Systems (BMS)
- DC-DC Power Converters
- Battery Chargers
- Solar Energy Systems
- Fuel Cell Applications
- Industrial Power Supplies
- Portable Electronic Devices

---

## Software Requirements

- MATLAB R2022a or later
- Signal Processing Toolbox (for `square()` and `sawtooth()` functions)

---

## Skills Demonstrated

- MATLAB Programming
- Power Electronics
- DC-DC Converter Design
- PWM Generation
- Component Sizing
- Inductor Design
- Capacitor Design
- Data Visualization
- Electrical System Analysis

---

## Author

**Tuphan Maji**

**EV Engineer | MATLAB | Simulink | Embedded C | Battery Management System (BMS) | Power Electronics | Electric Vehicle Technology**

---

## License

This project is licensed under the **MIT License**.

# DC-DC Buck Converter Using MATLAB/Simulink

## Objective

The objective of this project is to design and simulate a DC-DC Buck Converter using MATLAB/Simulink to convert a higher DC input voltage into a lower regulated DC output voltage with high efficiency. The project demonstrates converter operation, output voltage regulation, inductor current behavior, and ripple analysis under Continuous Conduction Mode (CCM).

---

## Project Overview

A Buck Converter is a step-down DC-DC power converter widely used in battery-powered systems, electric vehicles (EVs), renewable energy systems, and power supplies. It uses a high-frequency switching device along with an inductor and capacitor to efficiently reduce the input voltage.

---

## Working Principle

The Buck Converter operates in two switching states.

### Switch ON

- MOSFET is turned ON.
- Input voltage is applied to the inductor.
- Inductor stores energy.
- Load receives power from the source.
- Inductor current increases linearly.

### Switch OFF

- MOSFET is turned OFF.
- Freewheeling diode conducts.
- Inductor releases stored energy.
- Load continues receiving power.
- Inductor current decreases linearly.

By controlling the duty cycle of the PWM signal, the average output voltage is regulated.

---

## Circuit Components

- DC Voltage Source
- MOSFET Switch
- Freewheeling Diode
- Inductor (L)
- Capacitor (C)
- Resistive Load
- PWM Generator
- Voltage Measurement
- Current Measurement
- Scope

---

## Mathematical Equations

### Output Voltage

\[
V_o = D \times V_{in}
\]

where

- \(V_o\) = Output Voltage
- \(V_{in}\) = Input Voltage
- \(D\) = Duty Cycle

---

### Duty Cycle

\[
D=\frac{V_o}{V_{in}}
\]

---

### Inductor Current Ripple

\[
\Delta I_L=\frac{(V_{in}-V_o)D}{Lf_s}
\]

---

### Output Voltage Ripple

\[
\Delta V_o=\frac{\Delta I_L}{8Cf_s}
\]

---

### Output Power

\[
P_o=V_o\times I_o
\]

---

## Simulation Parameters

| Parameter | Value |
|-----------|--------|
| Input Voltage | 48 V |
| Output Voltage | 24 V |
| Switching Frequency | 20 kHz |
| Duty Cycle | 0.5 |
| Inductor | 720 µH |
| Capacitor | 434 µF |
| Load Resistance | 1.25 Ω |

*(Modify these values according to your project.)*

---

## MATLAB/Simulink Model

The Simulink model contains:

- PWM Generator
- MOSFET Switch
- Freewheeling Diode
- LC Filter
- Resistive Load
- Voltage Sensor
- Current Sensor
- Scope Blocks

---

## Simulation Outputs

The following waveforms are observed:

### Output Voltage

- Regulated DC output
- Small ripple

### Inductor Current

- Triangular waveform
- Continuous current

### MOSFET Gate Pulse

- PWM switching signal

### MOSFET Voltage

- Switching waveform

### Output Current

- Stable load current

---

## Expected Results

- Stable regulated output voltage
- Continuous Conduction Mode (CCM)
- Reduced output ripple
- High conversion efficiency
- Stable inductor current

---

## Applications

- Electric Vehicle Battery Systems
- Battery Chargers
- DC Power Supplies
- Solar Energy Systems
- Embedded Electronics
- Portable Devices
- Industrial Automation
- LED Drivers

---

## Advantages

- High efficiency (typically 90–98%)
- Simple circuit design
- Low heat generation
- Small filter size
- Fast voltage regulation
- Reliable operation

---

## Future Improvements

- Closed-loop PI Controller
- PID Controller
- Digital Control using MATLAB
- Synchronous Buck Converter
- Battery Charging Algorithm
- Efficiency Calculation
- Thermal Analysis
- Hardware Implementation
- Embedded C Code Generation

---

## Software Requirements

- MATLAB R2022a or later
- Simulink
- Simscape Electrical (Recommended)

---

## Folder Structure

```
Buck_Converter/
│
├── Buck_Converter.slx
├── Buck_Converter.m
├── README.md
├── Images/
│   ├── Circuit.png
│   ├── OutputVoltage.png
│   ├── InductorCurrent.png
│   └── PWM.png
```

---

## Learning Outcomes

After completing this project, you will understand:

- PWM control
- Duty cycle control
- Buck converter operation
- Continuous Conduction Mode (CCM)
- Inductor current ripple
- Output voltage ripple
- MATLAB/Simulink modeling
- DC-DC converter design

---

## Author

**Tuphan Maji**

EV Engineer | MATLAB | Simulink | Embedded C | Battery Management System (BMS) | Power Electronics | Electric Vehicle Technology

---

## License

This project is released under the MIT License.

---

## Keywords

Buck Converter, DC-DC Converter, MATLAB, Simulink, Power Electronics, PWM, MOSFET, Inductor, Capacitor, Embedded Systems, Electric Vehicle, Battery Charger, Voltage Regulator, CCM.

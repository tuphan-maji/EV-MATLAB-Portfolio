# DC-DC Buck Converter Using MATLAB/Simulink

## Objective

This project presents the design and simulation of a **DC-DC Buck Converter** using **MATLAB/Simulink**. The converter efficiently steps down a higher DC input voltage to a regulated lower output voltage while demonstrating PWM control, inductor current behavior, voltage regulation, and ripple analysis under **Continuous Conduction Mode (CCM)**.

---

## Project Description

A **Buck Converter** is a high-efficiency step-down DC-DC converter widely used in Electric Vehicles (EVs), Battery Management Systems (BMS), renewable energy systems, and regulated power supplies. The output voltage is controlled by varying the duty cycle of a high-frequency PWM signal driving the MOSFET switch.

---

## Working Principle

The Buck Converter operates in two switching states.

### ON State

- MOSFET is turned ON.
- The input voltage is applied across the inductor.
- The inductor stores energy.
- The load receives power directly from the source.
- Inductor current increases linearly.

### OFF State

- MOSFET is turned OFF.
- The freewheeling diode conducts.
- The inductor releases its stored energy.
- The load continues to receive current.
- Inductor current decreases linearly.

The average output voltage is regulated by adjusting the PWM duty cycle.

---

## Mathematical Equations

### Output Voltage

**Vo = D × Vin**

Where:

- **Vo** = Output Voltage (V)
- **Vin** = Input Voltage (V)
- **D** = Duty Cycle

### Duty Cycle

**D = Vo / Vin**

### Inductor Ripple Current

**ΔIL = ((Vin − Vo) × D) / (L × fs)**

### Output Voltage Ripple

**ΔVo = ΔIL / (8 × C × fs)**

### Output Power

**Po = Vo × Io**

Where:

- **Io** = Output Current (A)

---

## Simulation Parameters

| Parameter | Value |
|------------|--------|
| Input Voltage | 48 V |
| Output Voltage | 24 V |
| Switching Frequency | 20 kHz |
| Duty Cycle | 0.5 |
| Inductor | 720 µH |
| Capacitor | 434 µF |
| Load Resistance | 1.25 Ω |

> Modify these values according to your project requirements.

---

## Simulink Model

The model consists of the following components:

- DC Voltage Source
- PWM Generator
- MOSFET Switch
- Freewheeling Diode
- Inductor (L)
- Capacitor (C)
- Resistive Load
- Voltage Measurement Block
- Current Measurement Block
- Scope

---

## Simulation Results

The simulation verifies the following:

- Regulated output voltage
- Continuous Conduction Mode (CCM)
- Triangular inductor current waveform
- MOSFET switching voltage
- PWM gate pulse
- Stable load current
- Low output voltage ripple

---

## Applications

- Electric Vehicle Battery Systems
- Battery Chargers
- Battery Management Systems (BMS)
- Renewable Energy Systems
- DC Power Supplies
- Embedded Systems
- Industrial Power Electronics
- LED Drivers

---

## Future Improvements

- Closed-Loop PI Controller
- PID Controller
- Synchronous Buck Converter
- Digital Control Implementation
- Battery Charging Algorithm
- Converter Efficiency Analysis
- Thermal Analysis
- Hardware Prototype Development
- Embedded C Code Generation

---


## Expected Output

The simulation produces the following waveforms:

- Output Voltage
- Output Current
- Inductor Current
- MOSFET Voltage
- PWM Gate Pulse

---

## Skills Demonstrated

- MATLAB Programming
- Simulink Modeling
- Power Electronics
- PWM Control
- DC-DC Converter Design
- Continuous Conduction Mode (CCM)
- Voltage Regulation
- Ripple Analysis

---

## Author

**Tuphan Maji**

**EV Engineer | MATLAB | Simulink | Embedded C | Battery Management System (BMS) | Power Electronics | Electric Vehicle Technology**

---

## License

This project is licensed under the **MIT License**.

---

## Repository Topics

`Buck Converter` • `MATLAB` • `Simulink` • `Power Electronics` • `DC-DC Converter` • `PWM` • `MOSFET` • `Electric Vehicle` • `Battery Management System` • `Embedded Systems`

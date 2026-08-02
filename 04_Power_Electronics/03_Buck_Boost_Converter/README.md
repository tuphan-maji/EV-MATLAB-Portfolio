

# Buck-Boost Converter Analysis using MATLAB

## Project Overview

This project presents the design and analysis of an **Inverting Buck-Boost Converter** using **MATLAB**. The converter operates in **Continuous Conduction Mode (CCM)** and converts a **48 V DC input** into regulated negative output voltages of **−24 V** and **−72 V**.

The project evaluates the converter performance by calculating the **duty cycle**, **switch ON time (TON)**, **switch OFF time (TOFF)**, and **conversion ratio**, assuming an efficiency of **90%** and a switching frequency of **50 kHz**.

---

## Project Information

| Parameter | Value |
|-----------|-------|
| **Author** | Tuphan Maji |
| **Software** | MATLAB |
| **Converter Type** | Inverting Buck-Boost Converter |
| **Operating Mode** | Continuous Conduction Mode (CCM) |
| **Switching Frequency** | 50 kHz |
| **Efficiency** | 90% |

---

# Input Parameters

| Parameter | Symbol | Value |
|-----------|--------|-------|
| Input Voltage | Vin | 48 V |
| Output Voltage | Vo | -24 V, -72 V |
| Switching Frequency | fs | 50 kHz |
| Switching Period | Ts | 20 μs |
| Efficiency | η | 90 % |

---

# Design Equations

### Duty Cycle

```text
D = |Vo| / (ηVin + |Vo|)
```

### Switch ON Time

```text
TON = D × Ts
```

### Switch OFF Time

```text
TOFF = (1 − D) × Ts
```

### Voltage Conversion Ratio

```text
M = |Vo| / Vin
```

### Efficiency

```text
η = (Pout / Pin) × 100
```

---

# MATLAB Calculation Results

## Case 1 : Output Voltage = −24 V

| Parameter | Value |
|-----------|------:|
| Duty Cycle | 0.3571 |
| Duty Cycle (%) | 35.71 % |
| TON | 7.14 μs |
| TOFF | 12.86 μs |
| Conversion Ratio | 0.50 |

---

## Case 2 : Output Voltage = −72 V

| Parameter | Value |
|-----------|------:|
| Duty Cycle | 0.6250 |
| Duty Cycle (%) | 62.50 % |
| TON | 12.50 μs |
| TOFF | 7.50 μs |
| Conversion Ratio | 1.50 |

---

# Graphical Outputs

The MATLAB program generates the following plots:

- Duty Cycle vs Output Voltage
- TON vs Output Voltage
- TOFF vs Output Voltage
- Efficiency Characteristics
- TON and TOFF Comparison

---

# Applications

- Battery Management Systems (BMS)
- Electric Vehicles (EV)
- Renewable Energy Systems
- DC Motor Drives
- Industrial DC Power Supplies
- UPS Systems
- Embedded Power Electronics

---

# Conclusion

The MATLAB analysis demonstrates the operation of an **Inverting Buck-Boost Converter** supplied from a **48 V DC source**.

For an output voltage of **−24 V**, the converter operates with a duty cycle of **35.71%**. When the output voltage increases to **−72 V**, the duty cycle rises to **62.50%**, increasing the switch ON time while decreasing the switch OFF time.

The simulation confirms the expected behavior of the converter operating in **Continuous Conduction Mode (CCM)** at a switching frequency of **50 kHz** with an assumed efficiency of **90%**.

---

# Repository Structure

```
Buck-Boost-Converter/
│
├── Buck_Boost_Converter.m
├── README.md
├── Output_Images/
│   ├── DutyCycle.png
│   ├── TON.png
│   ├── TOFF.png
│   ├── Efficiency.png
│   └── Comparison.png
│
└── LICENSE
```

---

# Future Improvements

- Closed-loop voltage control
- PID Controller implementation
- Simulink model development
- Hardware implementation
- MOSFET and diode loss analysis
- Efficiency optimization

---

## Author

**Tuphan Maji**

Electrical & Facility Engineering Professional

Learning MATLAB • Simulink • Power Electronics • Battery Management Systems (BMS) • Electric Vehicles (EV)

---

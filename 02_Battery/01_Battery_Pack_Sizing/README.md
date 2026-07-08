# Battery Pack Size Calculation Using MATLAB

# Objective

The objective of this project is to design and size a battery pack for an electric vehicle using MATLAB. The program calculates the number of cells required in series and parallel, the total number of cells, battery pack voltage, battery pack capacity, and total battery energy based on the vehicle's energy and voltage requirements.


# Theory

A battery pack is formed by connecting multiple battery cells in series and parallel to meet the required voltage, capacity, and energy requirements of an electric vehicle.

- Cells connected in **series** increase the battery pack voltage.
- Cells connected in **parallel** increase the battery pack capacity (Ah).
- The total battery energy depends on the pack voltage and pack capacity.

Battery pack sizing is an important step in electric vehicle design because it directly affects vehicle range, performance, weight, and cost.


# Mathematical Equations

### Battery Energy

Battery Energy (Wh) = Battery Energy (kWh) × 1000

### Number of Cells in Series

Ns = Required Pack Voltage / Cell Voltage

### Required Battery Pack Capacity

Pack Capacity (Ah) = Battery Energy (Wh) / Pack Voltage

### Number of Cells in Parallel

Np = Required Pack Capacity / Cell Capacity

### Total Number of Cells

Total Cells = Ns × Np

### Actual Battery Pack Voltage

Pack Voltage = Ns × Cell Voltage

### Actual Battery Pack Capacity

Pack Capacity = Np × Cell Capacity

### Actual Battery Pack Energy

Battery Energy (kWh) = (Pack Voltage × Pack Capacity) / 1000


## Input Parameters

| Parameter | Value | Unit |
|-----------|------:|------|
| Required Battery Energy | 40 | kWh |
| Required Pack Voltage | 350 | V |
| Cell Voltage | 3.7 | V |
| Cell Capacity | 5 | Ah |


# MATLAB File

Battery_Pack_Size_Calculation.m


# Output

The MATLAB program calculates:

- Number of Cells in Series
- Number of Cells in Parallel
- Total Number of Cells
- Battery Pack Voltage
- Battery Pack Capacity
- Total Battery Energy (kWh)

The calculated results are displayed in the MATLAB Command Window.

# Applications

- Electric Vehicle Battery Pack Design
- Battery Pack Sizing
- EV Powertrain Design
- Battery Selection
- Vehicle Range Estimation
- Battery System Engineering

# Future Improvements

Future versions of this project can include:

- Battery State of Charge (SOC) estimation
- Battery State of Health (SOH) estimation
- Battery Thermal Analysis
- Cell Balancing
- Battery Degradation Analysis
- Battery Cost Estimation
- Battery Weight Calculation

# Skills Demonstrated

- MATLAB Programming
- EV Battery Pack Design
- Series and Parallel Cell Configuration
- Battery Energy Calculation
- Engineering Calculations
- Electric Vehicle System Design


# Author

**Tuphan Maji**


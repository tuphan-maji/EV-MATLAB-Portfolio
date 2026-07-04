# Maximum Speed Analysis Using MATLAB

# Objective

The objective of this project is to determine the **maximum achievable speed** of an electric vehicle using MATLAB. The program calculates the total road load acting on the vehicle over a range of speeds and determines the speed at which the available tractive force becomes equal to the total resistive force. This analysis helps evaluate the top-speed capability of an electric vehicle under steady-state driving conditions.


# Theory

The maximum speed of an electric vehicle is achieved when the available tractive force produced by the motor is exactly equal to the total road load acting against the vehicle.

The total road load consists of:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Grade Resistance Force (if applicable)

As the vehicle speed increases, aerodynamic drag increases rapidly, reducing the remaining tractive force available for acceleration. The point where the tractive force equals the total road load represents the maximum vehicle speed.

# Mathematical Equations

### Rolling Resistance Force

Frr = Crr × m × g

### Aerodynamic Drag Force

Fad = 0.5 × ρ × Cd × A × v²


### Grade Resistance Force

Fg = m × g × sin(θ)

### Total Road Load

Ftotal = Frr + Fad + Fg

### Maximum Speed Condition

Ftractive = Ftotal

# Input Parameters

| Parameter | Value | Unit |
|-----------|------:|------|
| Vehicle Mass | 1500 | kg |
| Gravity | 9.81 | m/s² |
| Rolling Resistance Coefficient | 0.015 | - |
| Drag Coefficient | 0.30 | - |
| Frontal Area | 2.2 | m² |
| Air Density | 1.225 | kg/m³ |
| Road Gradient | 0 | degree |
| Maximum Tractive Force | 6000 | N |
| Vehicle Speed Range | 0–40 | m/s |

# MATLAB File

**Maximum_Speed_Analysis.m**

---

## Output

The MATLAB program calculates:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Grade Resistance Force
- Total Road Load
- Available Tractive Force
- Maximum Vehicle Speed

The program also plots:

- Road Load vs Vehicle Speed
- Tractive Force vs Vehicle Speed
- Maximum Speed Operating Point

# Applications

- Electric Vehicle Performance Analysis
- Maximum Speed Prediction
- Motor Performance Evaluation
- Vehicle Dynamics Analysis
- EV Powertrain Design
- Electric Vehicle Simulation

# Future Improvements

- Include motor efficiency map.
- Include gearbox efficiency.
- Analyse different vehicle masses.
- Compare multiple electric vehicles.
- Include battery voltage drop.
- Evaluate maximum speed on different road gradients.
- Develop a Simulink model for validation.

# Author

Tuphan Maji



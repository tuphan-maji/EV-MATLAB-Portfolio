# Motor Power Calculation Using MATLAB
## Objective
The objective of this project is to calculate the motor power required to propel an electric vehicle over a range of vehicle speeds. The MATLAB program computes the total tractive force acting on the vehicle and determines the corresponding motor power, helping engineers estimate the power rating required for the electric motor.
## Theory
An electric vehicle motor must provide sufficient power to overcome all resistive forces acting on the vehicle while maintaining the desired speed.
The total tractive force is the sum of:
- Rolling Resistance Force
- Aerodynamic Drag Force
- Gradient Force
- Acceleration Force
The motor power is calculated from the relationship between force and vehicle speed.
P = F_t \times v
where:
- **P** = Motor Power (W)
- **Ft** = Total Tractive Force (N)
- **v** = Vehicle Speed (m/s)
## Mathematical Equations
### Rolling Resistance Force
Frr = Crr × m × g
### Aerodynamic Drag Force
Fad = 0.5 × ρ × Cd × A × v²
### Gradient Force
Fg = m × g × sin(θ)
### Acceleration Force
Fa = m × a
### Total Tractive Force
Ft = Frr + Fad + Fg + Fa
### Motor Power
P = Ft × v
Motor Power (kW)
P(kW) = P / 1000
## Input Parameters
| Parameter | Value | Unit |
|-----------|------:|------|
| Vehicle Mass | 1500 | kg |
| Gravity | 9.81 | m/s² |
| Rolling Resistance Coefficient | 0.015 | - |
| Drag Coefficient | 0.30 | - |
| Frontal Area | 2.2 | m² |
| Air Density | 1.225 | kg/m³ |
| Road Gradient | 5 | degree |
| Vehicle Acceleration | 2 | m/s² |
| Vehicle Speed | 0–40 | m/s |
## MATLAB File
Motor_Power_Calculation.m
## Output
The MATLAB program calculates:
- Rolling Resistance Force
- Aerodynamic Drag Force
- Gradient Force
- Acceleration Force
- Total Tractive Force
- Motor Power (kW)
It also plots:
- Motor Power vs Vehicle Speed
## Applications
- Electric Vehicle Motor Sizing
- Motor Power Rating Selection
- Powertrain Design
- Battery Power Estimation
- Vehicle Performance Analysis
- EV Energy Management
## Future Improvements
- Include motor efficiency.
- Include gearbox efficiency.
- Include regenerative braking.
- Analyse different driving cycles.
- Compare multiple EV models.
## Author
Tuphan Maji

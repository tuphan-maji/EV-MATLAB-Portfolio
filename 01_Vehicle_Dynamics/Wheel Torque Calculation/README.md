# Wheel Torque Calculation Using MATLAB

## Objective

The objective of this project is to calculate the wheel torque required to propel an electric vehicle under different operating conditions. The program determines the total tractive force acting on the vehicle and calculates the corresponding wheel torque over a range of vehicle speeds.

## Theory

Wheel torque is the torque that must be delivered to the driving wheels to overcome all the resistive forces acting on the vehicle.

The total tractive force consists of:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Gradient Force
- Acceleration Force

The wheel torque is calculated using:

Tw = Ft × r

where:

- Tw = Wheel Torque (N·m)
- Ft = Total Tractive Force (N)
- r = Wheel Radius (m)

contentReference[oaicite:0]{index=0}

## Mathematical Equations

### Rolling Resistance

Frr = Crr × m × g

### Aerodynamic Drag

Fad = 0.5 × ρ × Cd × A × v²


### Gradient Force

```
Fg = m × g × sin(θ)
```

### Acceleration Force
Fa = m × a


### Total Tractive Force
Ft = Frr + Fad + Fg + Fa


### Wheel Torque
Tw = Ft × r

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
| Wheel Radius | 0.30 | m |
| Vehicle Speed | 0–40 | m/s |


## MATLAB File

Wheel_Torque_Calculation.m

## Output

The MATLAB program calculates:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Gradient Force
- Acceleration Force
- Total Tractive Force
- Wheel Torque

The program also plots:

- Wheel Torque vs Vehicle Speed

## Applications

- Electric Vehicle Design
- Wheel Torque Estimation
- Motor Selection
- Gear Ratio Design
- Drivetrain Performance Analysis
- EV Powertrain Development

## Future Improvements

Future versions of this project can include:

- Gear ratio calculation
- Transmission efficiency
- Regenerative braking
- Motor efficiency
- Drive cycle analysis

## Author

Tuphan Maji
PG Certificate in Electric Vehicle Technology

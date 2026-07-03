# Gradeability Analysis Using MATLAB

# Objective

The objective of this project is to determine the maximum road gradient (gradeability) that an electric vehicle can climb using MATLAB. The program calculates the available tractive force, road angle, and gradeability percentage over a range of vehicle speeds. This analysis helps evaluate the hill-climbing capability of an electric vehicle.

# Theory

Gradeability is the ability of a vehicle to climb an inclined road while maintaining the desired speed. It is one of the most important performance parameters in electric vehicle design.

When a vehicle travels on an uphill road, the motor must generate sufficient tractive force to overcome:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Gradient Force
- Acceleration Force

The remaining available tractive force determines the maximum road gradient that the vehicle can climb.


# Mathematical Equations

### Rolling Resistance Force

Frr = Crr × m × g

### Aerodynamic Drag Force

Fad = 0.5 × ρ × Cd × A × v²

### Acceleration Force

Fa = m × a

### Gradient Force

Fg = Ft − (Frr + Fad + Fa)

### Road Gradient Angle

θ = asin(Fg / (m × g))

### Gradeability

Gradeability (%) = tan(θ) × 100


# Input Parameters

| Parameter | Value | Unit |
|-----------|------:|------|
| Vehicle Mass | 1500 | kg |
| Gravity | 9.81 | m/s² |
| Rolling Resistance Coefficient | 0.015 | - |
| Drag Coefficient | 0.30 | - |
| Frontal Area | 2.2 | m² |
| Air Density | 1.225 | kg/m³ |
| Vehicle Acceleration | 2 | m/s² |
| Maximum Tractive Force | 6000 | N |
| Vehicle Speed | 0–40 | m/s |


# MATLAB File

Gradeability_Analysis.m


# Output

The MATLAB program calculates:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Acceleration Force
- Available Gradient Force
- Road Gradient Angle
- Gradeability (%)

The program also plots:

- Gradeability vs Vehicle Speed


## Applications

- Electric Vehicle Performance Analysis
- Hill Climbing Capability Evaluation
- Motor Selection
- Vehicle Design Optimization
- EV Powertrain Development
- Commercial Vehicle Design


## Future Improvements

- Include motor efficiency.
- Include gearbox efficiency.
- Analyse different vehicle masses.
- Compare multiple electric vehicles.
- Evaluate gradeability under different road conditions.


# Author

Tuphan Maji



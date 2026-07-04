# Regenerative Braking Analysis Using MATLAB
# Objective

The objective of this project is to analyse the regenerative braking performance of an electric vehicle using MATLAB. The program calculates the regenerative braking power and the recoverable kinetic energy during vehicle deceleration over a range of speeds. This analysis helps evaluate the energy recovery capability of an electric vehicle and its contribution to improving driving range and overall efficiency.

# Theory

Regenerative braking is a technology used in electric vehicles where the traction motor operates as a generator during deceleration. Instead of dissipating the vehicle's kinetic energy as heat through mechanical brakes, the motor converts a portion of the kinetic energy into electrical energy and stores it back in the battery.

During braking, the total braking force consists of:

- Mechanical Braking Force
- Regenerative Braking Force
- Rolling Resistance Force
- Aerodynamic Drag Force

The amount of recoverable energy depends on:

- Vehicle Speed
- Vehicle Mass
- Regenerative Braking Efficiency
- Braking Deceleration

Higher vehicle speeds result in greater kinetic energy, allowing more energy to be recovered through regenerative braking.

# Mathematical Equations

### Rolling Resistance Force

Frr = Crr × m × g

### Aerodynamic Drag Force

Fad = 0.5 × ρ × Cd × A × v²

### Braking Force

Fb = m × a

### Kinetic Energy

Ek = 0.5 × m × v²

### Recoverable Energy

Erecover = ηregen × Ek

### Regenerative Braking Power

Pregen = ηregen × Fb × v

## Input Parameters

| Parameter | Value | Unit |
|-----------|------:|------|
| Vehicle Mass | 1500 | kg |
| Gravity | 9.81 | m/s² |
| Rolling Resistance Coefficient | 0.015 | - |
| Drag Coefficient | 0.30 | - |
| Frontal Area | 2.2 | m² |
| Air Density | 1.225 | kg/m³ |
| Braking Deceleration | 2 | m/s² |
| Regenerative Braking Efficiency | 75 | % |
| Vehicle Speed | 0–120 | km/h |


# MATLAB File

**Regenerative_Braking_Analysis.m**

# Output

The MATLAB program calculates:

- Rolling Resistance Force
- Aerodynamic Drag Force
- Braking Force
- Regenerative Braking Power
- Vehicle Kinetic Energy
- Recoverable Energy

The program also plots:

- Regenerative Power vs Vehicle Speed
- Recoverable Energy vs Vehicle Speed

# Applications

- Electric Vehicle Energy Recovery Analysis
- Regenerative Braking Performance Evaluation
- Battery Charging Analysis
- EV Powertrain Development
- Vehicle Efficiency Improvement
- Electric Vehicle Simulation

# Future Improvements

- Include battery charging efficiency.
- Include inverter and motor efficiency.
- Analyse different vehicle masses.
- Compare regenerative braking efficiencies.
- Evaluate different braking deceleration rates.
- Include battery State of Charge (SOC) variation.
- Develop a Simulink model for regenerative braking.

# Author

Tuphan Maji




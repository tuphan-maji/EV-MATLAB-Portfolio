# EV Motor Selection Using MATLAB

## Objective

The objective of this project is to develop a MATLAB program that assists in selecting a suitable electric motor for an electric vehicle based on vehicle mass, maximum speed, wheel radius, gear ratio, and road load conditions. The program calculates the required wheel torque, motor torque, motor speed, and motor power for EV traction applications.

## Theory

Motor selection is one of the most important tasks in EV drivetrain design. The selected motor must provide sufficient torque for acceleration and hill climbing while also meeting the required top speed.

The vehicle experiences:

* Rolling resistance

* Aerodynamic drag

* Grade resistance

* Acceleration force

The total tractive force required is:

Ftractive = Frolling + Faero + Fgrade + Facc

Wheel torque is:

Twheel = Ftractive × rwheel

Motor torque is:

Tmotor = Twheel / Gear Ratio

Motor speed is:

Nmotor = (Vehicle Speed × 60 × Gear Ratio) / (2π × rwheel)

## Input Parameters

| Parameter        | Value       |
| ---------------- | ----------- |
| Vehicle Mass     | 600 kg      |
| Maximum Speed    | 80 km/h     |
| Wheel Radius     | 0.30 m      |
| Gear Ratio       | 8           |
| Road Gradient    | 15 %        |
| Air Density      | 1.225 kg/m³ |
| Drag Coefficient | 0.30        |
| Frontal Area     | 2.2 m²      |

## MATLAB File

ev_motor_selection.m

## Calculation

Vehicle Speed

80 km/h = 22.22 m/s

Grade Force

Fgrade = m × g × Gradient

Fgrade = 600 × 9.81 × 0.15

Fgrade = 882.9 N

Wheel Torque

Twheel = Ftractive × 0.30

Motor Torque

Tmotor = Twheel / 8

Motor Speed

Nmotor = (22.22 × 60 × 8) / (2π × 0.30)

Nmotor ≈ 5660 RPM

## Output

The program calculates:

* Total tractive force (N)

* Wheel torque (Nm)

* Required motor torque (Nm)

* Required motor speed (RPM)

* Required motor power (kW)

## Sample Output

Total Tractive Force = 1250 N

Wheel Torque = 375 Nm

Motor Torque = 46.9 Nm

Motor Speed = 5660 RPM

Motor Power = 27.8 kW

## Applications

* Electric Vehicle drivetrain design

* PMSM and BLDC motor selection

* EV performance analysis

* Battery and motor matching

* Vehicle range optimization

* Academic and research projects

## Advantages

* Simple and fast motor sizing.

* Useful for EV beginners.

* Considers realistic vehicle parameters.

* Helps estimate motor power requirements.

* Suitable for interview and portfolio demonstrations.

## Future Improvements

* Add acceleration time analysis.

* Include regenerative braking calculations.

* Compare multiple motor options.

* Integrate battery voltage and current limits.

* Develop a Simulink drivetrain model.

* Add efficiency-based motor selection.

## Conclusion

This project successfully demonstrates electric vehicle motor selection using MATLAB. The program calculates the required motor torque, speed, and power based on vehicle operating conditions, providing a practical approach for selecting an appropriate traction motor for EV applications.

## Author

Tuphan Maji


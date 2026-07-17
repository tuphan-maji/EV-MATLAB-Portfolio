# Motor Loss Analysis Using MATLAB

## Objective

The objective of this project is to analyze the different types of losses occurring in an electric motor using MATLAB. The program calculates copper loss, core loss, mechanical loss, stray load loss, total motor loss, and motor efficiency, and visualizes the loss distribution using a pie chart.

## Theory

Electric motors experience several losses during operation, which reduce the overall efficiency of the motor.

The major losses considered in this project are:

* Copper Loss (Pcu) – Loss due to winding resistance.

* Core Loss (Pcore) – Iron losses caused by hysteresis and eddy currents.

* Mechanical Loss (Pmech) – Friction and windage losses.

* Stray Load Loss (Pstray) – Additional miscellaneous losses.

Total motor loss is:

Ptotal = Pcu + Pcore + Pmech + Pstray

Motor efficiency is:

η = (Pout / Pin) × 100

## Input Parameters

| Parameter        | Value    |
| ---------------- | -------- |
| Supply Voltage   | 400 V    |
| Motor Current    | 20 A     |
| Phase Resistance | 0.5 Ω    |
| Motor Speed      | 1500 RPM |
| Output Power     | 8000 W   |
| Core Loss        | 250 W    |
| Mechanical Loss  | 150 W    |

## MATLAB File

motor_loss_analysis.m

## Calculation

Copper Loss

Pcu = 3 × I² × R

Pcu = 3 × (20²) × 0.5

Pcu = 600 W

Stray Load Loss

Pstray = 0.01 × Output Power

Pstray = 0.01 × 8000

Pstray = 80 W

Total Loss

Ptotal = 600 + 250 + 150 + 80

Ptotal = 1080 W

Input Power

Pin = Pout + Ptotal

Pin = 8000 + 1080

Pin = 9080 W

Efficiency

η = (8000 / 9080) × 100

η = 88.11 %

## Output

Copper Loss

600.00 W

Core Loss

250.00 W

Mechanical Loss

150.00 W

Stray Loss

80.00 W

Total Loss

1080.00 W

Input Power

9080.00 W

Output Power

8000.00 W

Efficiency

88.11 %

## Graph

The MATLAB program generates a pie chart showing the percentage contribution of:

* Copper Loss

* Core Loss

* Mechanical Loss

* Stray Load Loss

## Applications

* Electric Vehicle motor analysis

* PMSM and BLDC motor performance evaluation

* Thermal management studies

* Motor efficiency optimization

* Inverter and drivetrain analysis

* Academic and research projects

## Advantages

* Simple MATLAB implementation.

* Clearly identifies major motor losses.

* Useful for EV efficiency studies.

* Provides visual loss distribution.

* Suitable for interview and portfolio demonstrations.

## Future Improvements

* Include temperature-dependent resistance.

* Model speed-dependent core losses.

* Add inverter switching losses.

* Generate efficiency maps.

* Integrate with Simulink thermal models.

## Conclusion

This project successfully analyzes motor losses using MATLAB. The program calculates copper, core, mechanical, and stray losses, determines the total motor loss and efficiency, and visualizes the loss distribution using a pie chart. The implementation provides a practical understanding of motor loss mechanisms used in EV traction motor analysis.

## Author

Tuphan Maji


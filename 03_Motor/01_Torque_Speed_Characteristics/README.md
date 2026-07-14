# Motor Torque-Speed Characteristics Using MATLAB

## Objective

The objective of this project is to develop a MATLAB program that generates the torque-speed and power-speed characteristics of an electric vehicle motor. The program demonstrates the constant torque region and constant power region commonly observed in PMSM and BLDC motors used in EV applications.

## Theory

Electric vehicle traction motors typically operate in two regions:

### Constant Torque Region

From zero speed up to the base speed, the motor delivers nearly constant torque.

### Constant Power Region

Above the base speed, the inverter reaches its voltage limit and the motor operates at approximately constant power. Torque decreases inversely with speed.

Torque in the constant power region:

T = Tmax × (Base Speed / Speed)

Motor power is calculated using:

P = T × ω

Where:

* P = Power (W)

* T = Torque (Nm)

* ω = Angular speed (rad/s)

## Input Parameters

| Parameter      | Value    |
| -------------- | -------- |
| Base Speed     | 3000 RPM |
| Maximum Speed  | 6000 RPM |
| Maximum Torque | 200 Nm   |
| Speed Step     | 100 RPM  |

## MATLAB File

motor_torque_speed_characteristics.m

## Calculation

At Base Speed (3000 RPM)

Torque = 200 Nm

Angular Speed = 2 × π × 3000 / 60 = 314.16 rad/s

Power = 200 × 314.16 = 62.8 kW

At 6000 RPM

Torque = 200 × (3000 / 6000)

Torque = 100 Nm

Power ≈ 62.8 kW

## Output

Base Speed

3000 RPM

Maximum Speed

6000 RPM

Maximum Torque

200 Nm

Maximum Power

62.8 kW

## Graphs

The MATLAB program generates:

* Torque vs Speed Curve

* Power vs Speed Curve

The torque curve remains constant up to 3000 RPM and then decreases, while the power curve remains approximately constant in the high-speed region.

## Applications

* Electric Vehicle motor analysis

* PMSM and BLDC motor performance study

* EV drivetrain design

* Traction motor sizing

* Motor controller development

* Academic and research projects

## Advantages

* Simple MATLAB implementation

* Clearly demonstrates EV motor operating regions

* Useful for interview preparation

* Easy to modify for different motor ratings

* Generates publication-quality plots

## Future Improvements

* Add regenerative braking characteristics.

* Include motor efficiency map.

* Model battery voltage limitation.

* Add thermal derating.

* Integrate with Simulink EV drivetrain model.

## Conclusion

This project successfully generates the torque-speed and power-speed characteristics of an EV traction motor using MATLAB. The implementation demonstrates the constant torque and constant power operating regions that are fundamental to PMSM and BLDC motors used in electric vehicles.

## Author

Tuphan Maji


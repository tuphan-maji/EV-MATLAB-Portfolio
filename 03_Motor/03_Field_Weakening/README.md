# Field Weakening Analysis Using MATLAB

## Objective

The objective of this project is to analyze the field weakening operation of an electric vehicle motor using MATLAB. The program demonstrates how motor torque decreases above the base speed while power remains approximately constant, which is a key operating characteristic of PMSM and BLDC traction motors used in electric vehicles.

## Theory

Field weakening is a control technique used to extend the operating speed range of an electric motor beyond its base speed.

Below the base speed, the motor operates in the constant torque region where the inverter can supply the required voltage and current.

Above the base speed, the available inverter voltage becomes limited. To increase motor speed further, the effective magnetic field is reduced, causing:

* Motor torque to decrease.

* Motor speed to increase.

* Motor power to remain approximately constant.

Torque in the field weakening region is:

T = Tmax × (Base Speed / Speed)

Motor power is:

P = T × ω

Where:

* T = Torque (Nm)

* P = Power (W)

* ω = Angular speed (rad/s)

## Input Parameters

| Parameter      | Value    |
| -------------- | -------- |
| Base Speed     | 3000 RPM |
| Maximum Speed  | 6000 RPM |
| Maximum Torque | 200 Nm   |
| Speed Step     | 100 RPM  |

## MATLAB File

field_weakening_analysis.m

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

* Field Weakening Region Indicator

The torque curve remains constant up to the base speed and then decreases inversely with speed, while the power curve remains approximately constant.

## Applications

* Electric Vehicle traction motors

* PMSM motor control

* BLDC motor analysis

* Motor controller development

* Field weakening control strategy design

* EV drivetrain optimization

* Academic and research projects

##


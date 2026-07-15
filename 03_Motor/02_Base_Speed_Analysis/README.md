# Base Speed Analysis: Constant Torque and Constant Power Regions Using MATLAB

## Objective

The objective of this project is to analyze the torque-speed and power-speed characteristics of a motor around its base speed using MATLAB. The program demonstrates the transition from the constant torque region to the constant power region, which is a fundamental operating characteristic of electric vehicle traction motors and variable frequency drive (VFD) systems.

## Theory

Electric motors used in EVs and industrial drives typically operate in two regions:

### Constant Torque Region

From zero speed up to the base speed, the motor delivers approximately constant torque. Power increases linearly with speed.

### Constant Power Region

Above the base speed, the motor enters the field-weakening region. The available voltage becomes limited, causing torque to decrease inversely with speed while power remains approximately constant.

The motor power relation is:

P = T × ω

Where:

* P = Power (W)

* T = Torque (Nm)

* ω = Angular speed (rad/s)

Angular speed is calculated as:

ω = 2πN / 60

Where N is the motor speed in RPM.

## Input Parameters

| Parameter     | Value    |
| ------------- | -------- |
| Rated Power   | 10000 W  |
| Base Speed    | 1500 RPM |
| Maximum Speed | 3000 RPM |
| Speed Points  | 200      |

## MATLAB File

base_speed_analysis.m

## Calculation

Rated Torque

T = P / ω

T = 10000 / (2π × 1500 / 60)

T = 63.66 Nm

At Base Speed (1500 RPM)

Torque = 63.66 Nm

Power = 10 kW

At Maximum Speed (3000 RPM)

Power = 10 kW

Torque = 10000 / (2π × 3000 / 60)

Torque = 31.83 Nm

## Output

Rated Torque

63.66 Nm

Base Speed

1500 RPM

Maximum Speed

3000 RPM

Maximum Power

10.0 kW

## Graphs

The MATLAB program generates:

* Torque vs Speed Curve

* Power vs Speed Curve

* Base Speed Transition Marker

The graph clearly shows the constant torque region below 1500 RPM and the constant power region above 1500 RPM.

## Applications

* Electric Vehicle motor analysis

* PMSM and BLDC motor performance study

* Variable Frequency Drive (VFD) analysis

* Field-weakening operation study

* Motor controller development

* EV drivetrain design

* Academic and research projects

## Advantages

* Simple MATLAB implementation

* Clearly demonstrates base speed operation

* Useful for EV and motor drive interviews

* Easy to modify for different motor ratings

* Generates professional characteristic curves

## Future Improvements

* Add motor efficiency calculation.

* Include regenerative braking characteristics.

* Model battery voltage limitations.

* Add thermal derating effects.

* Integrate with Simulink motor drive models.

## Conclusion

This project successfully analyzes the base speed behavior of an electric motor using MATLAB. The implementation demonstrates the transition from constant torque operation to constant power operation, which is a key characteristic of EV traction motors and modern motor drive systems.

## Author

Tuphan Maji


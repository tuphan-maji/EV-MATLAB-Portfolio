# Battery Charging Time Estimation Using MATLAB

## Objective

The objective of this project is to estimate the charging time of an electric vehicle battery using MATLAB. The program calculates the required charge, effective charging current, and total charging time based on battery capacity, State of Charge (SOC), charging current, and charging efficiency.

## Theory

Battery charging time depends on the amount of charge that must be added to the battery and the effective charging current available.

Required Capacity (Ah) = Battery Capacity × (Target SOC − Initial SOC)

Charging efficiency accounts for losses occurring during the charging process.

Effective Current (A) = Charging Current × Efficiency

The charging time can be estimated as:

Charging Time (hours) = Required Capacity / Effective Current

## Input Parameters

| Parameter           | Value  |
| ------------------- | ------ |
| Battery Capacity    | 100 Ah |
| Initial SOC         | 20 %   |
| Target SOC          | 100 %  |
| Charging Current    | 10 A   |
| Charging Efficiency | 90 %   |

## MATLAB File

battery_charging_time.m

## Calculation

| Required Capacity | 100 × (1.00 − 0.20) = 80 Ah |
| ----------------- | --------------------------- |
| Effective Current | 10 × 0.90 = 9 A             |
| Charging Time     | 80 / 9 = 8.89 hours         |

## Output

Battery Capacity

100.0 Ah

Initial SOC

20 %

Target SOC

100 %

Charging Current

10.0 A

Charging Efficiency

90 %

Required Capacity

80.0 Ah

Estimated Charging Time

8.89 hours

## Graph

The MATLAB program generates a SOC vs Time charging profile showing the battery charge level increasing from 20% to 100% over approximately 8.89 hours.

## Applications

* Battery Management System (BMS)

* EV charging time prediction

* Charging infrastructure analysis

* Energy management systems

* Academic and research projects

## Advantages

* Simple implementation

* Fast calculation

* Includes charging efficiency

* Useful for EV charging analysis

* Suitable for MATLAB beginners

## Future Improvements

* Add fast charging and slow charging modes.

* Use variable charging current profiles.

* Include battery temperature effects.

* Model constant-current / constant-voltage (CC-CV) charging.

* Develop a Simulink charging model.

## Conclusion

This project successfully estimates the charging time of an EV battery using MATLAB. The program demonstrates a fundamental Battery Management System (BMS) calculation used for charging analysis, energy planning, and EV range management.

## Author

Tuphan Maji


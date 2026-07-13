# Battery SOC Estimation Using MATLAB

## Project Title

Battery State of Charge (SOC) Estimation Using Coulomb Counting in MATLAB

## Objective

The objective of this project is to estimate the State of Charge (SOC) of a battery using the Coulomb Counting method and visualize the SOC variation over time using MATLAB.

## Theory

State of Charge (SOC) represents the remaining capacity of a battery as a percentage of its total capacity.

Coulomb Counting estimates SOC by integrating the battery current over time.

SOC = SOC₀ − (I × t / Capacity) × 100

Where:

* SOC₀ = Initial State of Charge (%)

* I = Battery current (A)

* t = Time (hours)

* Capacity = Battery capacity (Ah)

## Input Parameters

| Parameter         | Value        |
| ----------------- | ------------ |
| Battery Capacity  | 100 Ah       |
| Initial SOC       | 100 %        |
| Discharge Current | 10 A         |
| Simulation Time   | 0 to 5 hours |
| Time Step         | 0.1 hour     |

## MATLAB Program

battery_soc_estimation.m

## Calculation

| Battery Capacity  | 100 Ah          |
| ----------------- | --------------- |
| Discharge Current | 10 A            |
| Time              | 5 hours         |
| Charge Removed    | 10 × 5 = 50 Ah  |
| Final SOC         | 100 − 50 = 50 % |

## Output

Final SOC after 5.0 hours

50.00 %

## Graph

The MATLAB plot shows a linear decrease in SOC from 100% to 50% over 5 hours of discharge.

## Applications

* Battery Management System (BMS)

* Electric Vehicle battery monitoring

* Battery range estimation

* Energy management systems

* Academic and research projects

## Advantages

* Simple implementation

* Low computational complexity

* Suitable for real-time systems

* Widely used in EV BMS applications

## Limitations

* Accumulated sensor error

* Initial SOC uncertainty

* Current measurement drift

* Does not account for battery aging

## Future Improvements

* Add charging and discharging modes

* Use variable current profile

* Include temperature compensation

* Implement Extended Kalman Filter (EKF)

* Develop a Simulink model

## Conclusion

This project successfully estimates the battery State of Charge using the Coulomb Counting method in MATLAB. The implementation demonstrates a fundamental BMS algorithm used in electric vehicles for monitoring battery charge level and predicting remaining energy.

## Author

Tuphan Maji

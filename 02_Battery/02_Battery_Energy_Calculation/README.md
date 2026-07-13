# EV Battery Energy and Range Estimation using MATLAB

## Objective

The objective of this project is to develop a MATLAB program that calculates:

* Total battery energy (Wh and kWh)

* Available battery energy based on State of Charge (SOC)

* Estimated electric vehicle driving range

## Theory

Battery energy is determined by the product of battery voltage and capacity.

Total Energy (Wh) = Voltage (V) × Capacity (Ah)

The available energy depends on the State of Charge (SOC) of the battery.

Available Energy = Total Energy × (SOC / 100)

The driving range of an EV can be estimated using the energy consumption rate.

Range (km) = Available Energy (Wh) / Consumption (Wh/km)

## Input Parameters

| Parameter             | Value     |
| --------------------- | --------- |
| Battery Voltage       | 96 V      |
| Battery Capacity      | 100 Ah    |
| State of Charge (SOC) | 80 %      |
| Energy Consumption    | 120 Wh/km |

## MATLAB Program

ev_battery_energy_range_estimation.m

## Calculation

| Total Energy     | 96 × 100 = 9600 Wh = 9.6 kWh     |
| ---------------- | -------------------------------- |
| Available Energy | 9600 × 0.80 = 7680 Wh = 7.68 kWh |
| Estimated Range  | 7680 / 120 = 64 km               |

## Output

Total Battery Energy

9.60 kWh

Available Battery Energy

7.68 kWh

Estimated Driving Range

64.00 km

## Applications

* Battery Management System (BMS)

* EV range prediction

* Battery sizing analysis

* Energy consumption studies

* EV simulation and research projects

## Advantages

* Simple and fast calculation

* Useful for EV beginners

* Can be expanded for advanced BMS algorithms

* Suitable for academic and interview demonstrations

## Future Scope

* Add SOC vs Range graph

* Include battery degradation model

* Add charging time estimation

* Support LFP and NMC battery chemistry

* Integrate with Simulink model

## Conclusion

This project successfully calculates the total battery energy, available energy, and estimated driving range of an electric vehicle using MATLAB. The program demonstrates fundamental EV battery calculations that are commonly used in Battery Management Systems (BMS) and EV energy analysis.

## Author

Tuphan Maji

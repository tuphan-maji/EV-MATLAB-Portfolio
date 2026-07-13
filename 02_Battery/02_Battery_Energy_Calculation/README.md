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

| Total Energy | 96 × 100 = 9600 Wh |
| ------------ | ------------------ |

# SOC Estimation Using Embedded C (Coulomb Counting Method)

## Objective

The objective of this project is to estimate the **State of Charge (SOC)** of an electric vehicle battery using the **Coulomb Counting method**. The program calculates the remaining battery charge and the updated SOC based on the battery capacity, discharge current, and operating time. This project demonstrates the basic principle used in Battery Management Systems (BMS) for SOC estimation.


## Theory

State of Charge (SOC) indicates the amount of energy remaining in a battery and is expressed as a percentage of the battery's rated capacity.

One of the most widely used SOC estimation techniques in Battery Management Systems (BMS) is the **Coulomb Counting Method**. It estimates the battery SOC by integrating the battery current over time.

During battery discharge:

* Battery current is measured continuously.
* Charge removed from the battery is calculated.
* Remaining battery capacity is updated.
* SOC is recalculated.

Although simple, Coulomb Counting is widely used because of its fast computation and suitability for real-time embedded systems.


## Mathematical Equations

### Charge Consumed

Charge Used (Ah) = Current (A) × Time (h)

### Remaining Charge

Remaining Charge (Ah) = Battery Capacity − Charge Used

### State of Charge

SOC (%) = (Remaining Charge / Battery Capacity) × 100


## Input Parameters

| Parameter        | Value | Unit |
| ---------------- | ----: | ---- |
| Battery Capacity |    60 | Ah   |
| Initial SOC      |   100 | %    |
| Battery Current  |    10 | A    |
| Operating Time   |     1 | hour |


## Embedded C File

SOC_Estimation.c


## Output

The program calculates:

* Charge Used (Ah)
* Remaining Battery Charge (Ah)
* State of Charge (SOC %)

Sample Output:


Remaining Charge = 50.00 Ah
Current SOC = 83.33 %

## Applications

* Battery Management System (BMS)
* Electric Vehicles (EV)
* Hybrid Electric Vehicles (HEV)
* Energy Storage Systems (ESS)
* Battery Monitoring Systems
* Embedded Battery Controllers


## Author

**Tuphan Maji**


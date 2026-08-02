

 Inverting Buck-Boost Converter Design and Analysis
1. Introduction

The Buck-Boost Converter is a DC-DC power converter capable of producing an output voltage magnitude either lower or higher than the input voltage while reversing its polarity. It is widely used in battery-powered systems, industrial power supplies, renewable energy systems, and automotive electronics.

This project analyzes an inverting buck-boost converter using MATLAB and evaluates its duty cycle, switching characteristics, voltage conversion ratio, and efficiency.

2. Design Specifications
Input Voltage (Vin)       = 48 V
Output Voltage (Vo)       = -24 V, -72 V
Efficiency (η)            = 90 %
Switching Frequency (fs)  = 50 kHz
Switching Period (Ts)     = 20 μs

3. Converter Operating Principle
Switch ON State
MOSFET is ON.
Inductor stores energy.
Diode is reverse-biased.
Load is supplied by the output capacitor.
Switch OFF State
MOSFET is OFF.
Inductor releases stored energy.
Diode becomes forward-biased.
Energy is transferred to the load.
4. Governing Equations
Duty Cycle Including Efficiency
D=∣Vo∣ηVin+∣Vo∣D=\frac{|V_o|}{\eta V_{in}+|V_o|}
Switching Period
Ts=1fsT_s=\frac{1}{f_s}
ON Time
Ton=D×TsT_{on}=D\times T_s
OFF Time
Toff=(1−D)×TsT_{off}=(1-D)\times T_s
Voltage Conversion Ratio
M=∣Vo∣VinM=\frac{|V_o|}{V_{in}}
Efficiency
η=PoutPin×100%\eta=\frac{P_{out}}{P_{in}}\times100\%
5. MATLAB Algorithm
Define converter specifications.
Calculate switching period.
Compute duty cycle.
Calculate TON and TOFF.
Calculate voltage conversion ratio.
Display numerical results.
Generate performance plots.
6. Results
Case 1: Output Voltage = -24 V
D=0.3571D=0.3571 Ton=7.14 μsT_{on}=7.14\,\mu s Toff=12.86 μsT_{off}=12.86\,\mu s M=0.5M=0.5
Case 2: Output Voltage = -72 V
D=0.625D=0.625 Ton=12.5 μsT_{on}=12.5\,\mu s Toff=7.5 μsT_{off}=7.5\,\mu s M=1.5M=1.5
7. Result Summary
Parameter	-24 V	-72 VDuty Cycle (%)	35.71	62.50
TON (μs)	7.14	12.50
TOFF (μs)	12.86	7.50
Conversion Ratio	0.5	1.5
8. Efficiency Analysis

The converter efficiency is assumed to be:

η=90%\eta = 90\%

Hence,

Ploss=Pin−PoutP_{loss}=P_{in}-P_{out} Ploss=(1−η)PinP_{loss}=(1-\eta)P_{in}

The major losses include:

MOSFET conduction losses
Diode losses
Inductor copper losses
Switching losses
Capacitor ESR losses
9. Expected Graphs

The MATLAB program generates:

Graph 1

Duty Cycle vs Output Voltage

Graph 2

TON vs Output Voltage

Graph 3

TOFF vs Output Voltage

Graph 4

Efficiency vs Output Voltage

Graph 5

TON and TOFF Comparison

10. Applications
Battery-powered electronics
Electric vehicles
Renewable energy systems
DC motor drives
Industrial DC power supplies
UPS systems
11. Conclusion

An inverting buck-boost converter operating from a 48 V source was analyzed for output voltages of -24 V and -72 V at a switching frequency of 50 kHz. The duty cycle increased from 35.71% to 62.5% as the required output voltage magnitude increased. Consequently, the switch ON time increased while the OFF time decreased. The converter achieved the desired voltage conversion with an assumed efficiency of 90%, and MATLAB was used to obtain both numerical and graphical performance characteristics.

Future Work

For a more complete design, add:

Output power/load specification
Inductor design (LL)
Output capacitor design (CC)
Inductor current ripple calculation
Output voltage ripple calculation
CCM/DCM boundary analysis
MOSFET and diode rating selection
Simulink model validation

These are usually expected in a final academic project or laboratory report and are currently the main missing items.
              
               

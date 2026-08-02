======================================================================
                BUCK-BOOST CONVERTER ANALYSIS USING MATLAB
======================================================================

Project Title:
Design and Analysis of an Inverting Buck-Boost Converter

Author:
Tuphan Maji

----------------------------------------------------------------------
1. INTRODUCTION
----------------------------------------------------------------------

A Buck-Boost Converter is a DC-DC power electronic converter capable of
producing an output voltage magnitude either lower or higher than the
input voltage while reversing the polarity of the output. The converter
stores energy in an inductor during the ON state and transfers this
energy to the load during the OFF state.

This project analyzes an inverting buck-boost converter operating with
a 48 V input source and generating output voltages of -24 V and -72 V
at a switching frequency of 50 kHz with an assumed efficiency of 90%.

----------------------------------------------------------------------
2. DESIGN SPECIFICATIONS
----------------------------------------------------------------------

Input Voltage (Vin)            = 48 V
Output Voltage (Vo)            = -24 V, -72 V
Efficiency (η)                 = 90 %
Switching Frequency (fs)       = 50 kHz
Switching Period (Ts)          = 20 µs

----------------------------------------------------------------------
3. OBJECTIVES
----------------------------------------------------------------------

• Analyze converter operation.
• Determine required duty cycle.
• Calculate switching ON and OFF times.
• Study voltage conversion characteristics.
• Evaluate efficiency effects.
• Generate graphical results using MATLAB.

----------------------------------------------------------------------
4. OPERATING PRINCIPLE
----------------------------------------------------------------------

Switch ON Condition:
--------------------
• MOSFET is turned ON.
• Diode becomes reverse biased.
• Inductor stores energy.
• Output capacitor supplies the load.

Switch OFF Condition:
---------------------
• MOSFET is turned OFF.
• Inductor releases stored energy.
• Diode becomes forward biased.
• Energy is transferred to the load.

----------------------------------------------------------------------
5. DESIGN EQUATIONS
----------------------------------------------------------------------

Duty Cycle:

          |Vo|
D = -----------------
    ηVin + |Vo|

Switching Period:

Ts = 1/fs

ON Time:

Ton = D × Ts

OFF Time:

Toff = (1-D) × Ts

Voltage Conversion Ratio:

M = |Vo| / Vin

Efficiency:

η = Pout / Pin × 100%

Power Loss:

Ploss = Pin - Pout

----------------------------------------------------------------------
6. MATLAB CALCULATED RESULTS
----------------------------------------------------------------------

Case 1 : Output Voltage = -24 V

Duty Cycle (D)       = 0.3571
Duty Cycle (%)       = 35.71 %

TON                  = 7.14 µs
TOFF                 = 12.86 µs

Voltage Ratio (M)    = 0.50


Case 2 : Output Voltage = -72 V

Duty Cycle (D)       = 0.6250
Duty Cycle (%)       = 62.50 %

TON                  = 12.50 µs
TOFF                 = 7.50 µs

Voltage Ratio (M)    = 1.50

----------------------------------------------------------------------
7. RESULT SUMMARY
----------------------------------------------------------------------

For Vo = -24 V

• Duty Cycle = 35.71 %
• TON = 7.14 µs
• TOFF = 12.86 µs
• Conversion Ratio = 0.50

For Vo = -72 V

• Duty Cycle = 62.50 %
• TON = 12.50 µs
• TOFF = 7.50 µs
• Conversion Ratio = 1.50

Observation:

As the desired output voltage magnitude increases, the required
duty cycle increases. Consequently, the switch remains ON for a
longer duration and OFF for a shorter duration.

----------------------------------------------------------------------
8. EFFICIENCY ANALYSIS
----------------------------------------------------------------------

Assumed Efficiency = 90 %

The efficiency of the converter is defined as:

η = Pout / Pin × 100%

Major losses contributing to the 10 % loss include:

• MOSFET conduction losses
• MOSFET switching losses
• Diode forward losses
• Inductor copper losses
• Capacitor ESR losses

Higher efficiency results in reduced power loss and improved
converter performance.

----------------------------------------------------------------------
9. EXPECTED MATLAB GRAPHS
----------------------------------------------------------------------

1. Duty Cycle vs Output Voltage

2. TON vs Output Voltage

3. TOFF vs Output Voltage

4. Efficiency vs Output Voltage

5. TON and TOFF Comparison

These plots illustrate the dependence of switching behavior on
converter output voltage.

----------------------------------------------------------------------
10. APPLICATIONS
----------------------------------------------------------------------

• Electric Vehicles (EV)
• Battery Charging Systems
• Renewable Energy Systems
• DC Motor Drives
• Industrial DC Power Supplies
• UPS Systems
• Portable Electronic Devices

----------------------------------------------------------------------
11. CONCLUSION
----------------------------------------------------------------------

The inverting buck-boost converter was successfully analyzed using
MATLAB for an input voltage of 48 V and output voltages of -24 V and
-72 V. The converter operates at 50 kHz with an assumed efficiency of
90 %. The duty cycle increased from 35.71 % to 62.50 % as the output
voltage magnitude increased. Correspondingly, the switch ON time
increased while the OFF time decreased. The obtained numerical and
graphical results provide a useful basis for converter design,
simulation, and performance evaluation.

----------------------------------------------------------------------
Prepared By:
Tuphan Maji
----------------------------------------------------------------------

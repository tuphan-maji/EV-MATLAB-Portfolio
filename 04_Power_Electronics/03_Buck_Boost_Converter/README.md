
              
                 BUCK-BOOST CONVERTER ANALYSIS                    
                  MATLAB SIMULATION PROJECT                       
════════════════════════════════════════════════════════════════════

Author            : Tuphan Maji
Converter Type    : Inverting Buck-Boost Converter
Software Used     : MATLAB
Switching Mode    : Continuous Conduction Mode (CCM)
Date              : July 2026

──────────────────────────────────────────────────────────────────────
PROJECT OVERVIEW
──────────────────────────────────────────────────────────────────────

This project analyzes an inverting Buck-Boost Converter using MATLAB.
The converter operates from a 48V DC input source and generates
regulated negative output voltages of -24V and -72V at a switching
frequency of 50 kHz with an assumed efficiency of 90%.

──────────────────────────────────────────────────────────────────────
INPUT PARAMETERS
──────────────────────────────────────────────────────────────────────

Input Voltage (Vin)            = 48 V
Output Voltage (Vo)            = -24 V, -72 V
Efficiency (η)                 = 90 %
Switching Frequency (fs)       = 50 kHz
Switching Period (Ts)          = 20 μs

──────────────────────────────────────────────────────────────────────
DESIGN EQUATIONS
──────────────────────────────────────────────────────────────────────

Duty Cycle:

D = |Vo| / (ηVin + |Vo|)

Switch ON Time:

Ton = D × Ts

Switch OFF Time:

Toff = (1 - D) × Ts

Conversion Ratio:

M = |Vo| / Vin

Efficiency:

η = Pout / Pin × 100

──────────────────────────────────────────────────────────────────────
RESULTS
──────────────────────────────────────────────────────────────────────

CASE 1 : Vo = -24V

Duty Cycle (D)      = 0.3571
Duty Cycle (%)      = 35.71 %
TON                 = 7.14 μs
TOFF                = 12.86 μs
Conversion Ratio    = 0.50

------------------------------------------------------------

CASE 2 : Vo = -72V

Duty Cycle (D)      = 0.6250
Duty Cycle (%)      = 62.50 %
TON                 = 12.50 μs
TOFF                = 7.50 μs
Conversion Ratio    = 1.50

──────────────────────────────────────────────────────────────────────
GRAPHICAL OUTPUTS
──────────────────────────────────────────────────────────────────────

✓ Duty Cycle vs Output Voltage

✓ TON vs Output Voltage

✓ TOFF vs Output Voltage

✓ Efficiency Characteristics

✓ TON and TOFF Comparison

──────────────────────────────────────────────────────────────────────
APPLICATIONS
──────────────────────────────────────────────────────────────────────

• Battery Management Systems
• Electric Vehicles
• Renewable Energy Systems
• DC Motor Drives
• Industrial Power Supplies
• UPS Systems

──────────────────────────────────────────────────────────────────────
CONCLUSION
──────────────────────────────────────────────────────────────────────

The Buck-Boost Converter successfully converts a 48V input into
negative output voltages of -24V and -72V. As the required output
voltage magnitude increases, the duty cycle increases from 35.71%
to 62.50%, resulting in longer switch ON duration and reduced OFF
duration. The MATLAB analysis confirms proper converter operation
at 50 kHz with an assumed efficiency of 90%.

──────────────────────────────────────────────────────────────────────
Prepared By : Tuphan Maji
──────────────────────────────────────────────────────────────────────

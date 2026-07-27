
%  DC-DC BOOST CONVERTER DESIGN CALCULATOR
%  DC-DC Boost Converter operating in Continuous Conduction Mode (CCM).

clc;
clear;
close all;

% INPUT PARAMETERS 

Vin = 24;          % Input Voltage (V)
Vo = 48;           % Desired Output Voltage (V)
Po = 200;          % Output Power (W)
fs = 20e3;         % Switching Frequency (Hz)
eff = 0.90;        % Converter Efficiency
Ripple_I = 0.20;   % Inductor Current Ripple (20%)
Ripple_V = 0.02;   % Output Voltage Ripple (2%)

%BASIC CALCULATIONS 

% Duty Cycle
D = 1 - (Vin/Vo);

% Output Current
Io = Po / Vo;

% Input Power
Pin = Po / eff;

% Input Current
Iin = Pin / Vin;

% Load Resistance
R = Vo / Io;

% INDUCTOR DESIGN 

Delta_IL = Ripple_I * Iin;

L = (Vin * D) / (Delta_IL * fs);

% CAPACITOR DESIGN 

Delta_Vo = Ripple_V * Vo;

C = (Io * D) / (Delta_Vo * fs);

% COMPONENT RATINGS 

MOSFET_Voltage = Vo;
MOSFET_Current = Iin;

Diode_Voltage = Vo;
Diode_Current = Io;

% DISPLAY RESULTS 

fprintf('\n===========================================\n');
fprintf('      BOOST CONVERTER DESIGN RESULTS\n');
fprintf('===========================================\n\n');

fprintf('Input Voltage           : %.2f V\n',Vin);
fprintf('Output Voltage          : %.2f V\n',Vo);
fprintf('Output Power            : %.2f W\n',Po);
fprintf('Switching Frequency     : %.0f Hz\n',fs);

fprintf('\nDuty Cycle              : %.3f\n',D);

fprintf('\nInput Current           : %.3f A\n',Iin);
fprintf('Output Current          : %.3f A\n',Io);

fprintf('\nLoad Resistance         : %.3f Ohm\n',R);

fprintf('\nInductor Ripple Current : %.3f A\n',Delta_IL);
fprintf('Required Inductor       : %.6f H\n',L);

fprintf('\nAllowed Voltage Ripple  : %.3f V\n',Delta_Vo);
fprintf('Required Capacitor      : %.6f F\n',C);

fprintf('\nMOSFET Voltage Rating   : %.2f V\n',MOSFET_Voltage);
fprintf('MOSFET Current Rating   : %.2f A\n',MOSFET_Current);

fprintf('\nDiode Voltage Rating    : %.2f V\n',Diode_Voltage);
fprintf('Diode Current Rating    : %.2f A\n',Diode_Current);

fprintf('\n===========================================\n');

%WAVEFORM GENERATION 

T = 1/fs;
t = linspace(0,5*T,1000);

% PWM Signal
PWM = square(2*pi*fs*t,D*100);
PWM(PWM<0)=0;

% Inductor Current
IL = Iin + (Delta_IL/2)*sawtooth(2*pi*fs*t,0.5);

% Output Voltage Ripple
Vo_wave = Vo + (Delta_Vo/2)*sin(2*pi*fs*t);

% PLOTS 

figure;

subplot(3,1,1)
plot(t*1000,PWM,'LineWidth',2)
grid on
xlabel('Time (ms)')
ylabel('PWM')
title('PWM Gate Pulse')

subplot(3,1,2)
plot(t*1000,IL,'LineWidth',2)
grid on
xlabel('Time (ms)')
ylabel('Current (A)')
title('Inductor Current')

subplot(3,1,3)
plot(t*1000,Vo_wave,'LineWidth',2)
grid on
xlabel('Time (ms)')
ylabel('Voltage (V)')
title('Output Voltage')

sgtitle('DC-DC Boost Converter Waveforms')
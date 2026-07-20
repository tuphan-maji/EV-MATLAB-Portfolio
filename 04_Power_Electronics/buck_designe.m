clc;
clear;
close all;

% Specifications
Vin = 48;          % Input Voltage (V)
Vo = 24;           % Output Voltage (V)
Pout = 500;        % Output Power (W)
fs = 20e3;         % Switching Frequency (Hz)

% Calculations
Iout = Pout/Vo;
D = Vo/Vin;

% Ripple Specifications
dIL = 0.2*Iout;    % 20% current ripple
dV = 0.01*Vo;      % 1% voltage ripple

% Inductor Calculation
L = (Vo*(1-D))/(dIL*fs);

% Capacitor Calculation
C = dIL/(8*fs*dV);

% Load Resistance
R = Vo/Iout;

fprintf('Buck Converter Design\n');
fprintf('---------------------\n');
fprintf('Duty Cycle = %.2f\n',D);
fprintf('Output Current = %.2f A\n',Iout);
fprintf('Load Resistance = %.2f Ohm\n',R);
fprintf('Inductor = %.6f H\n',L);
fprintf('Capacitor = %.6f F\n',C);
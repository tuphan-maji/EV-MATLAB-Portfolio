clc;
clear;
close all;

% Given Parameters
Vin = 48;              % Input voltage (V)
Vout = [-24 -72];      % Desired output voltages (V)
eta = 0.90;            % Efficiency
fs = 50e3;             % Switching frequency (Hz)

% Calculations
Ts = 1/fs;             % Switching period

fprintf('=========================================\n');
fprintf('     BUCK-BOOST CONVERTER ANALYSIS\n');
fprintf('=========================================\n');
fprintf('Input Voltage      = %.2f V\n',Vin);
fprintf('Efficiency         = %.2f %%\n',eta*100);
fprintf('Switching Frequency= %.2f kHz\n',fs/1000);
fprintf('Switching Period   = %.2f us\n\n',Ts*1e6);

for k = 1:length(Vout)

    Vo = abs(Vout(k));

    % Duty cycle including efficiency
    D = Vo/(eta*Vin + Vo);

    % On and Off time
    Ton = D*Ts;
    Toff = (1-D)*Ts;

    % Conversion ratio
    M = Vo/Vin;

    % Verify output voltage
    Vo_calc = -eta*Vin*(D/(1-D));

    fprintf('Case %d\n',k);
    fprintf('-----------------------------------------\n');
    fprintf('Desired Output Voltage = %.2f V\n',Vout(k));
    fprintf('Conversion Ratio M     = %.4f\n',M);
    fprintf('Duty Cycle D           = %.4f\n',D);
    fprintf('Duty Cycle             = %.2f %%\n',D*100);
    fprintf('TON                    = %.2f us\n',Ton*1e6);
    fprintf('TOFF                   = %.2f us\n',Toff*1e6);
    fprintf('Calculated Vout        = %.2f V\n',Vo_calc);
    fprintf('-----------------------------------------\n\n');

end
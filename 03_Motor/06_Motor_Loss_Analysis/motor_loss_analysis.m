% Motor Loss Analysis.

%% Motor Parameters
V = 400;          % Voltage (V)
I = 20;           % Current (A)
R_phase = 0.5;    % Phase resistance (Ohm)

Speed = 1500;     % Motor speed (rpm)
Output_Power = 8000; % Mechanical output power (W)

%% Loss Calculations

% 1. Copper Loss
P_cu = 3 * I^2 * R_phase;

% 2. Core Loss (assumed)
P_core = 250;     % W

% 3. Mechanical Loss (friction + windage)
P_mech = 150;     % W

% 4. Stray Load Loss
P_stray = 0.01 * Output_Power;

% Total Loss
P_loss = P_cu + P_core + P_mech + P_stray;

% Input Power
P_in = Output_Power + P_loss;

% Efficiency
Efficiency = (Output_Power / P_in) * 100;

%% Results
fprintf('----- Motor Loss Analysis -----\n');
fprintf('Copper Loss      = %.2f W\n', P_cu);
fprintf('Core Loss        = %.2f W\n', P_core);
fprintf('Mechanical Loss  = %.2f W\n', P_mech);
fprintf('Stray Loss       = %.2f W\n', P_stray);
fprintf('------------------------------\n');
fprintf('Total Loss       = %.2f W\n', P_loss);
fprintf('Input Power      = %.2f W\n', P_in);
fprintf('Output Power     = %.2f W\n', Output_Power);
fprintf('Efficiency       = %.2f %%\n', Efficiency);

%% Pie Chart of Loss Distribution
figure;
pie([P_cu P_core P_mech P_stray], ...
    {'Copper','Core','Mechanical','Stray'});
title('Motor Loss Distribution');

% Battery Pack Size Calculation
clc;
clear;
close all;

% Vehicle Requirements

Battery_Energy_kWh = 40;      % Required Battery Energy (kWh)
Pack_Voltage = 350;           % Required Pack Voltage (V)

% Cell Specifications

Cell_Voltage = 3.7;           % Nominal Cell Voltage (V)
Cell_Capacity_Ah = 5;         % Cell Capacity (Ah)

% Calculations

% Convert battery energy into Wh
Battery_Energy_Wh = Battery_Energy_kWh * 1000;

% Number of cells in series
Ns = ceil(Pack_Voltage / Cell_Voltage);

% Pack Capacity Required
Pack_Capacity_Ah = Battery_Energy_Wh / Pack_Voltage;

% Number of cells in parallel
Np = ceil(Pack_Capacity_Ah / Cell_Capacity_Ah);

% Total Cells
Total_Cells = Ns * Np;

% Actual Pack Voltage
Actual_Pack_Voltage = Ns * Cell_Voltage;

% Actual Pack Capacity
Actual_Pack_Capacity = Np * Cell_Capacity_Ah;

% Actual Pack Energy
Actual_Energy_kWh = (Actual_Pack_Voltage * Actual_Pack_Capacity)/1000;

% Display Results

fprintf('Battery Energy Required = %.2f kWh\n',Battery_Energy_kWh);
fprintf('Required Pack Voltage = %.2f V\n',Pack_Voltage);

fprintf('\nCell Voltage = %.2f V\n',Cell_Voltage);
fprintf('Cell Capacity = %.2f Ah\n',Cell_Capacity_Ah);

fprintf('\nCells in Series = %d\n',Ns);
fprintf('Cells in Parallel = %d\n',Np);
fprintf('Total Cells = %d\n',Total_Cells);

fprintf('\nActual Pack Voltage = %.2f V\n',Actual_Pack_Voltage);
fprintf('Actual Pack Capacity = %.2f Ah\n',Actual_Pack_Capacity);
fprintf('Actual Battery Energy = %.2f kWh\n',Actual_Energy_kWh);
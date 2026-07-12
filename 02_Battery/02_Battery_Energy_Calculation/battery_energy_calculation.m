% Battery Energy Calculation Program
% Energy (Wh) = Voltage (V) * Capacity (Ah)

% 1. Input Parameters
voltage_v = 12.8;     % Nominal Voltage in Volts (e.g., LiFePO4 battery)
capacity_ah = 100;    % Battery Capacity in Ampere-hours

% 2. Calculation
energy_wh = voltage_v * capacity_ah;

% 3. Output the result
fprintf('Battery Nominal Voltage: %.2f V\n', voltage_v);
fprintf('Battery Capacity: %.2f Ah\n', capacity_ah);
fprintf('Total Battery Energy: %.2f Wh\n', energy_wh);
fprintf('Total Battery Energy: %.2f kWh\n', energy_wh / 1000);
% State of Health (SOH) Estimation - Capacity Degradation Method
% Formula: SOH (%) = (Current_Capacity / Nominal_Capacity) * 100

% 1. Input Parameters
nominal_capacity = 100;      % Original capacity when new (Ah)
current_max_capacity = 85;   % Capacity measured after aging (Ah)

% 2. SOH Calculation
soh = (current_max_capacity / nominal_capacity) * 100;

% 3. Output results
fprintf('Nominal Capacity: %.2f Ah\n', nominal_capacity);
fprintf('Current Measured Capacity: %.2f Ah\n', current_max_capacity);
fprintf('Estimated State of Health (SOH): %.2f%%\n', soh);

% 4. Logic check for Battery End-of-Life (EOL)
if soh < 80
    fprintf('Warning: Battery has reached End-of-Life (SOH < 80%%).\n');
else
    fprintf('Battery status is healthy.\n');
end
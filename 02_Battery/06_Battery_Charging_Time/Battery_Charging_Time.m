% Battery Charging Time Calculator
capacity_Ah = 100;        % Total capacity in Amp-hours
soc_initial = 0.2;        % Starting state of charge (20%)
charging_current_A = 10;  % Charging current in Amperes
efficiency = 0.9;         % Charging efficiency (90%)

% Calculate available capacity to be filled
available_capacity = capacity_Ah * (1 - soc_initial);

% Calculate effective charging current
effective_current = charging_current_A * efficiency;

% Calculate time in hours
charge_time_hours = available_capacity / effective_current;

fprintf('Estimated charging time: %.2f hours\n', charge_time_hours);
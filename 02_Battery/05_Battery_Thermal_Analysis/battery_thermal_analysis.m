% Battery Thermal Analysis 
% Formula: I^2*R*t

% Battery Thermal Analysis Program

% Input Parameters

I = 50; % Battery Current (A)

R = 0.01; % Internal Resistance (Ohm)

m = 2; % Battery Mass (kg)

Cp = 900; % Specific Heat Capacity (J/kg°C)

T_initial = 25; % Initial Temperature (°C)

% Simulation Time (0 to 600 seconds)

t = 0:10:600;

% Heat Generation Calculation

% Q = I^2 * R * t

Q = I^2 * R .* t;

% Temperature Rise Calculation

% DeltaT = Q / (m * Cp)

DeltaT = Q ./ (m * Cp);

% Final Battery Temperature

T = T_initial + DeltaT;

% Display Results

fprintf('Initial Temperature = %.2f °C\n', T_initial);

fprintf('Final Temperature = %.2f °C\n', T(end));

fprintf('Temperature Rise = %.2f °C\n', DeltaT(end));

% Plot Temperature vs Time

plot(t, T, 'LineWidth', 2);

grid on;

xlabel('Time (seconds)');

ylabel('Battery Temperature (°C)');

title('Battery Thermal Analysis During Discharge');

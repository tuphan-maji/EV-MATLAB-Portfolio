% Regenerative Braking Analysis Using MATLAB

% Vehicle Parameters

m = 1500;               % Vehicle Mass (kg)
g = 9.81;               % Gravity (m/s^2)
rho = 1.225;            % Air Density (kg/m^3)
Cd = 0.30;              % Drag Coefficient
A = 2.2;                % Frontal Area (m^2)
Crr = 0.015;            % Rolling Resistance Coefficient

eta_regen = 0.75;       % Regenerative Braking Efficiency (75%)

% Vehicle Speed

v_kmph = 0:5:120;       % Speed in km/h
v = v_kmph/3.6;         % Convert to m/s

% Deceleration

a = -2;                 % Braking Deceleration (m/s^2)

% Calculate Forces

% Rolling Resistance
Frr = Crr*m*g;

% Aerodynamic Drag
Fad = 0.5*rho*Cd*A.*v.^2;

% Braking Force
Fbrake = m*abs(a);

% Total Resistive Force
Ftotal = Frr + Fad + Fbrake;

% Regenerative Braking Power

Pregen = eta_regen .* Fbrake .* v;

% Recoverable Kinetic Energy

Ek = 0.5*m.*v.^2;

Erecover = eta_regen .* Ek;

% Display Maximum Values

fprintf('Maximum Regenerative Power = %.2f kW\n',max(Pregen)/1000);

fprintf('Maximum Recoverable Energy = %.2f kJ\n',max(Erecover)/1000);

% Plot 1

figure;

plot(v_kmph,Pregen/1000,'b','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Regenerative Power (kW)');

title('Regenerative Power vs Vehicle Speed');

% Plot 2

figure;

plot(v_kmph,Erecover/1000,'r','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Recoverable Energy (kJ)');

title('Recoverable Energy vs Vehicle Speed');
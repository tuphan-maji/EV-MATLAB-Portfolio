% Maximum Vehicle Speed Analysis

% Vehicle Parameters
m = 1500;          % Vehicle Mass (kg)
g = 9.81;          % Gravity (m/s^2)
Crr = 0.015;       % Rolling Resistance Coefficient
Cd = 0.30;         % Drag Coefficient
A = 2.2;           % Frontal Area (m^2)
rho = 1.225;       % Air Density (kg/m^3)

% Available Motor Power
Pmotor = 80000;    % Motor Power (W) = 80 kW

% Vehicle Speed
v = 0:0.5:60;      % Speed (m/s)

% Rolling Resistance Force
Frr = Crr*m*g;

% Aerodynamic Drag Force
Fad = 0.5*rho*Cd*A.*v.^2;

% Total Resistive Force
Ftotal = Frr + Fad;

% Power Required
Preq = Ftotal.*v;      % Watts

Preq_kW = Preq/1000;   % Convert to kW

% Find Maximum Speed

idx = find(Preq <= Pmotor);

Vmax = v(max(idx));

Vmax_kmph = Vmax*3.6;

fprintf('Maximum Vehicle Speed = %.2f km/h\n',Vmax_kmph);

% Display Table

Result = table(v',Preq_kW',...
    'VariableNames',{'Speed_mps','RequiredPower_kW'});

disp(Result)

% Plot

figure

plot(v*3.6,Preq_kW,'b','LineWidth',2)
hold on

yline(Pmotor/1000,'r--','Motor Power','LineWidth',2)

grid on

xlabel('Vehicle Speed (km/h)')
ylabel('Power (kW)')

title('Maximum Vehicle Speed Analysis')

legend('Required Power','Available Motor Power','Location','northwest')
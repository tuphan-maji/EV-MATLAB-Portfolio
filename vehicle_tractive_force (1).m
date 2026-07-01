% Vehicle tractive force calculation and ploting 
m = 1500;          %  mass
g = 9.81;          % Gravity (m/s^2)
Crr = 0.015;       % coefficient
Cd = 0.30;         % Drag coefficient
A = 2.2;           % Frontal area (m^2)
rho = 1.225;       % Air density (kg/m^3)
theta = 5*pi/180;  % Road gradient angle (5 degree)
a = 2;             % Vehicle rate of change of speed m/s^2
% Vehicle speed range
v = 0:1:40;        % Speed in m/s

% Rolling resistance force
Frr = Crr * m * g;

% Aerodynamic drag force
Fad = 0.5 * rho * Cd * A .* v.^2;

% Gradient force
Fg = m * g * sin(theta);

%Acceleration force
Fa = m*a;

% Total tractive force
Ft = Frr + Fad + Fg + Fa;

%Display constant force.
fprintf('Rolling resistance = %0.2fN\n',Frr);
fprintf('Gradient force = %0.2fN\n',Fg);
fprintf('Acceleration force = %0.2fN\n',Fa);

% Display drag force for each speed
disp(table(v', Fad', 'VariableNames', {'Speed_mps','Drag_Force_N'}))
disp(table(Fad',Ft','VariableNames',{'Drag_Force_N','Tractive_Force_N'}))

% Plotting
figure;
plot(v, Ft, 'LineWidth', 2);
xlabel('Vehicle Speed (m/s)');
ylabel('Tractive Force (N)');
title('Tractive Force vs Vehicle Speed');
grid on;


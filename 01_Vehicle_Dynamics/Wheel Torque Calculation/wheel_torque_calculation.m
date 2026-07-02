% Wheel Torque Calculation

% Vehicle Parameters
m = 1500;          % Vehicle mass (kg)
g = 9.81;          % Gravity (m/s^2)
Crr = 0.015;       % Rolling resistance coefficient
Cd = 0.30;         % Drag coefficient
A = 2.2;           % Frontal area (m^2)
rho = 1.225;       % Air density (kg/m^3)
theta = 5*pi/180;  % Road gradient (rad)
a = 2;             % Acceleration (m/s^2)
r = 0.30;          % Wheel radius (m)

% Speed Range
v = 0:1:40;

% Forces
Frr = Crr*m*g;
Fad = 0.5*rho*Cd*A.*v.^2;
Fg  = m*g*sin(theta);
Fa  = m*a;

% Total Tractive Force
Ft = Frr + Fad + Fg + Fa;

% Wheel Torque
Tw = Ft*r;

% Display Results
disp(table(v',Ft',Tw',...
    'VariableNames',{'Speed_mps','TractiveForce_N','WheelTorque_Nm'}));

% Plot
figure;
plot(v,Tw,'LineWidth',2);
grid on;

xlabel('Vehicle Speed (m/s)');
ylabel('Wheel Torque (N.m)');
title('Wheel Torque vs Vehicle Speed');
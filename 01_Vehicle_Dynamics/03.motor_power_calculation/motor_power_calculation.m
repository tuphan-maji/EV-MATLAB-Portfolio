% Motor Power Calculation

% Vehicle Parameters
m = 1500; % Vehicle Mass (kg)
g = 9.81; % Gravity (m/s^2)
Crr = 0.015; % Rolling Resistance Coefficient
Cd = 0.30; % Drag Coefficient
A = 2.2; % Frontal Area (m^2)
rho = 1.225; % Air Density (kg/m^3)
theta = 5*pi/180; % Road Gradient (rad)
a = 2; % Acceleration (m/s^2)

%Vehicle Speed
v = 0:1:40;%Speed(m/s)

%Force Calculation
Frr = Crr*m*g;
Fad = 0.5*rho*Cd*A.*v.^2;
Fg = m*g*sin(theta);
Fa = m*a;

%Total Tractive Force
Ft = Frr + Fad + Fg + Fa;
%Motor Power
P = Ft.*v; % Power in Watts

P_kW = P/1000; % Convert to kW

%Display Results
Result = table(v',Ft',P_kW',...
    'VariableNames',{'Speed_mps','TractiveForce_N','MotorPower_kW'});
disp(Result)

%Plot
figure
plot(v,P_kW,'b','LineWidth',2');
grid on
xlabel('Vehicle Speed (m/s)');
ylabel('Motor Power (kW)');
title('Motor Power vs Vehicle Speed');

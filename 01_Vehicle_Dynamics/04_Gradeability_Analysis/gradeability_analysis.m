% Gradeability Analysis

% Vehicle Parameters
m = 1500;          % Vehicle Mass (kg)
g = 9.81;          % Gravity (m/s^2)
Crr = 0.015;       % Rolling Resistance Coefficient
Cd = 0.30;         % Drag Coefficient
A = 2.2;           % Frontal Area (m^2)
rho = 1.225;       % Air Density (kg/m^3)
a = 2;             % Acceleration (m/s^2)

% Vehicle Speed
v = 0:1:40;        % Speed (m/s)

% Resistive Forces
Frr = Crr*m*g;

Fad = 0.5*rho*Cd*A.*v.^2;

Fa = m*a;

% Assume Maximum Available Tractive Force
Ft_max = 6000;     % N (Example)

% Gradient Force Available
Fg = Ft_max - (Frr + Fad + Fa);

% Negative values are not possible
Fg(Fg<0)=0;

% Gradeability Angle
theta = asind(Fg./(m*g));

% Gradeability Percentage
Grade = tand(theta)*100;

% Display Results
Result = table(v',Grade',...
    'VariableNames',{'Speed_mps','Gradeability_percent'});

disp(Result)

% Plot
figure
plot(v,Grade,'LineWidth',2)
grid on

xlabel('Vehicle Speed (m/s)')
ylabel('Gradeability (%)')
title('Gradeability vs Vehicle Speed')

% Speed range (RPM)
speed = linspace(0, 5000, 100);

% Torque range (Nm)
torque = linspace(0, 200, 100);

% Create mesh grid
[S, T] = meshgrid(speed, torque);

% Example motor parameters
P_rated = 50000;      % Rated power (W)
CopperLossCoeff = 0.002;
IronLossCoeff = 0.00001;
ConstLoss = 500;

% Mechanical output power (W)
Pout = (2*pi*S/60).*T;

% Motor losses
CopperLoss = CopperLossCoeff .* T.^2;
IronLoss = IronLossCoeff .* S.^2;
TotalLoss = CopperLoss + IronLoss + ConstLoss;

% Input power
Pin = Pout + TotalLoss;

% Efficiency calculation
Efficiency = (Pout ./ Pin) * 100;

% Limit efficiency values
Efficiency(Efficiency > 98) = 98;
Efficiency(Efficiency < 0) = 0;

% Plot efficiency map
figure;
contourf(S, T, Efficiency, 20, 'LineColor', 'none');
colorbar;
colormap(jet);

xlabel('Speed (RPM)');
ylabel('Torque (Nm)');
title('Motor Efficiency Map (%)');

hold on;
contour(S,T,Efficiency,[70 75 80 85 90 92 94 96],...
    'k','ShowText','on');
hold off;

grid on;

% Motor Field Weakening Analysis Program
% Simulates the decrease in torque and flux as speed exceeds base speed.

% 1. Constants
rated_power = 10000;       % Rated Power in Watts (W)
base_speed = 1500;         % Base Speed in RPM
max_speed = 3000;          % Maximum Speed in RPM

% 2. Define speed range for Field Weakening (above base speed)
speed = linspace(base_speed, max_speed, 100);

% 3. Calculate characteristics in the Field Weakening Region
% Power is assumed constant at the rated value
power = ones(size(speed)) * rated_power;

% Torque decreases inversely with speed (T = P / w)
torque = rated_power ./ (2 * pi * speed / 60);

% Flux ratio (phi_new / phi_rated) must decrease to maintain voltage limits
% phi_ratio = base_speed / speed
flux_ratio = base_speed ./ speed; 

% 4. Plotting the results
figure;
subplot(2,1,1);
plot(speed, torque, 'LineWidth', 2);
ylabel('Torque (Nm)');
title('Field Weakening: Torque vs Speed');
grid on;

subplot(2,1,2);
plot(speed, flux_ratio, 'LineWidth', 2, 'Color', 'r');
ylabel('Flux Ratio (\phi/\phi_{rated})');
xlabel('Speed (RPM)');
title('Field Weakening: Flux vs Speed');
grid on;
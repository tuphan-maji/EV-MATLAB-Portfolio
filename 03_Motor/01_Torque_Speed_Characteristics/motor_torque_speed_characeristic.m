% Motor Speed-Torque Characteristic Plot
% Assumes a linear relationship: T = Tm - (Tm / w_no_load) * w

% 1. Define Motor Constants
Tm = 50;          % Stall Torque in Newton-meters (Nm)
w_no_load = 200;  % No-load speed in radians per second (rad/s)

% 2. Define Speed range from 0 to no-load speed
w = linspace(0, w_no_load, 100);

% 3. Calculate Torque for the given speed range
T = Tm * (1 - (w / w_no_load));

% 4. Plotting the Characteristic
figure;
plot(T, w, 'LineWidth', 2, 'Color', 'b');
grid on;
xlabel('Torque (Nm)');
ylabel('Speed (rad/s)');
title('Motor Speed-Torque Characteristic');
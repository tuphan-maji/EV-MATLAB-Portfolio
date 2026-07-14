% Base Speed Analysis: Constant Torque and Constant Power Regions
% Models the transition at base speed for DC or VFD-driven motors

% 1. Define Motor Parameters
rated_power = 10000;      % Rated Power in Watts (W)
base_speed = 1500;        % Base Speed in RPM
max_speed = 3000;         % Maximum Speed in RPM

% 2. Create speed range vector
speed = linspace(10, max_speed, 200); % RPM

% 3. Calculate Torque and Power for each speed point
torque = zeros(size(speed));
power = zeros(size(speed));

for i = 1:length(speed)
    if speed(i) <= base_speed
        % Constant Torque Region
        % Torque remains at the rated torque level
        torque(i) = rated_power / (2 * pi * base_speed / 60);
        power(i) = torque(i) * (2 * pi * speed(i) / 60);
    else
        % Constant Power Region (Field Weakening)
        % Power remains at the rated power level, torque drops
        power(i) = rated_power;
        torque(i) = power(i) / (2 * pi * speed(i) / 60);
    end
end

% 4. Plotting the Characteristic Curves
figure;
yyaxis left
plot(speed, torque, 'LineWidth', 2);
ylabel('Torque (Nm)');
yyaxis right
plot(speed, power, 'LineWidth', 2);
ylabel('Power (W)');
xlabel('Speed (RPM)');
title('Motor Performance: Base Speed Analysis');
xline(base_speed, '--r', 'Base Speed', 'LineWidth', 1.5);
grid on;
legend('Torque', 'Power', 'Base Speed');
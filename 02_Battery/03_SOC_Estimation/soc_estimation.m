% State of Charge (SOC) Estimation - Coulomb Counting Method
% Formula: SOC_new = SOC_old - (I * dt) / (Qn * 3600)

% 1. Input Parameters
Qn = 100;           % Nominal Capacity in Ah
SOC_init = 0.8;     % Initial SOC (80% expressed as 0.8)
dt = 1;             % Time step in seconds
% Current in Amperes (Positive = Discharging, Negative = Charging)
I = [10, 10, 10, 5, 5, 0, -5, -5]; 

% 2. Initialization
soc = zeros(length(I), 1);
soc(1) = SOC_init;

% 3. SOC Estimation Loop
for k = 2:length(I)
    % Convert I(Amps) * dt(seconds) to Ah by dividing by 3600
    % Subtracting discharge current (positive) reduces SOC
    soc(k) = soc(k-1) - (I(k) * dt) / (Qn * 3600);
end

% 4. Visualization
plot(soc * 100, '-o', 'LineWidth', 2);
xlabel('Time Steps');
ylabel('SOC (%)');
title('Battery State of Charge Estimation');
grid on;
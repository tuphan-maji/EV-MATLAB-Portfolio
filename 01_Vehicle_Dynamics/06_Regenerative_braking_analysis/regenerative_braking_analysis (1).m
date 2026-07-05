% Regenerative Braking Analysis Using MATLAB

% Project : 06_Regenerative_Braking

% Description:
% This program analyses the regenerative braking performance
% of an Electric Vehicle (EV). It calculates:

% 1. Rolling Resistance Force
% 2. Aerodynamic Drag Force
% 3. Braking Force
% 4. Total Resistive Force
% 5. Regenerative Power
% 6. Recoverable Energy
% 7. Battery Charging Current
% 8. Efficiency Comparison
% 9. Vehicle Mass Comparison

% ============================================================
% Module 1 : Vehicle Parameters
% ============================================================

m = 1500;                  % Vehicle Mass (kg)
g = 9.81;                  % Gravity (m/s^2)
rho = 1.225;               % Air Density (kg/m^3)
Cd = 0.30;                 % Drag Coefficient
A = 2.2;                   % Frontal Area (m^2)
Crr = 0.015;               % Rolling Resistance Coefficient

eta_regen = 0.75;          % Regenerative Efficiency

Battery_Voltage = 350;     % Battery Voltage (V)
Battery_Capacity = 60;     % Battery Capacity (kWh)

% ============================================================
% Module 2 : Vehicle Speed
% ============================================================

v_kmph = 0:5:120;
v = v_kmph/3.6;

a = -2;                    % Braking Deceleration (m/s^2)

% ============================================================
% Module 3 : Force Calculations
% ============================================================

% Rolling Resistance

Frr = Crr*m*g;

% Aerodynamic Drag

Fad = 0.5*rho*Cd*A.*v.^2;

% Braking Force

Fbrake = m*abs(a);

% Total Resistive Force

Ftotal = Frr + Fad + Fbrake;

% ============================================================
% Module 4 : Regenerative Energy Calculation
% ============================================================

% Kinetic Energy

Ek = 0.5*m.*v.^2;

% Recoverable Energy

Erecover = eta_regen.*Ek;

% Regenerative Power

Pregen = eta_regen.*Fbrake.*v;

% ============================================================
% Module 5 : Battery Charging Current
% ============================================================

Charging_Current = Pregen./Battery_Voltage;

Charging_Power = Pregen/1000;      % kW

% ============================================================
% Module 6 : Efficiency Comparison
% ============================================================

Efficiency = [0.60 0.70 0.80 0.90];

Recovered_Energy = zeros(length(Efficiency),length(v));

for i = 1:length(Efficiency)

    Recovered_Energy(i,:) = Efficiency(i).*Ek;

end

% ============================================================
% Module 7 : Vehicle Mass Comparison
% ============================================================

Mass = [1000 1200 1500 1800 2000];

Mass_Energy = zeros(length(Mass),length(v));

for i = 1:length(Mass)

    Energy = 0.5*Mass(i).*v.^2;

    Mass_Energy(i,:) = eta_regen.*Energy;

end

% ============================================================
% Module 8 : Dashboard Report
% ============================================================

fprintf('\n');
fprintf('=====================================================\n');
fprintf('       EV REGENERATIVE BRAKING REPORT\n');
fprintf('=====================================================\n');

fprintf('Vehicle Mass                 : %.0f kg\n',m);
fprintf('Battery Voltage              : %.0f V\n',Battery_Voltage);
fprintf('Battery Capacity             : %.0f kWh\n',Battery_Capacity);
fprintf('Regenerative Efficiency      : %.0f %%\n',eta_regen*100);

fprintf('\n');

fprintf('Rolling Resistance Force     : %.2f N\n',Frr);
fprintf('Maximum Drag Force           : %.2f N\n',max(Fad));
fprintf('Braking Force                : %.2f N\n',Fbrake);
fprintf('Maximum Total Resistive Force: %.2f N\n',max(Ftotal));

fprintf('\n');

fprintf('Maximum Regenerative Power   : %.2f kW\n',max(Pregen)/1000);
fprintf('Maximum Charging Current     : %.2f A\n',max(Charging_Current));
fprintf('Maximum Recoverable Energy   : %.2f kJ\n',max(Erecover)/1000);

fprintf('=====================================================\n');

% Result Table

Result = table( ...
    v_kmph', ...
    Fad', ...
    Pregen'/1000, ...
    Charging_Current', ...
    Erecover'/1000, ...
    'VariableNames', ...
    {'Speed_kmph','DragForce_N','RegenPower_kW',...
    'ChargingCurrent_A','RecoveredEnergy_kJ'});

disp(Result);

% ============================================================
% Module 9 : Graphs
% ============================================================

% Graph 1

figure;

plot(v_kmph,Pregen/1000,'b','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Regenerative Power (kW)');

title('Regenerative Power vs Vehicle Speed');

% Graph 2

figure;

plot(v_kmph,Erecover/1000,'r','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Recovered Energy (kJ)');

title('Recovered Energy vs Vehicle Speed');

% Graph 3

figure;

plot(v_kmph,Charging_Current,'m','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Charging Current (A)');

title('Battery Charging Current vs Vehicle Speed');

% Graph 4

figure;

plot(v_kmph,Recovered_Energy(1,:)/1000,'LineWidth',2);

hold on;

plot(v_kmph,Recovered_Energy(2,:)/1000,'LineWidth',2);

plot(v_kmph,Recovered_Energy(3,:)/1000,'LineWidth',2);

plot(v_kmph,Recovered_Energy(4,:)/1000,'LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Recovered Energy (kJ)');

title('Efficiency Comparison');

legend('60%','70%','80%','90%','Location','northwest');

% Graph 5

figure;

plot(v_kmph,Mass_Energy(1,:)/1000,'LineWidth',2);

hold on;

plot(v_kmph,Mass_Energy(2,:)/1000,'LineWidth',2);

plot(v_kmph,Mass_Energy(3,:)/1000,'LineWidth',2);

plot(v_kmph,Mass_Energy(4,:)/1000,'LineWidth',2);

plot(v_kmph,Mass_Energy(5,:)/1000,'LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Recovered Energy (kJ)');

title('Vehicle Mass Comparison');

legend('1000 kg','1200 kg','1500 kg','1800 kg','2000 kg',...
       'Location','northwest');

% Graph 6

figure;

plot(v_kmph,Fad,'r','LineWidth',2);

hold on;

plot(v_kmph,Frr*ones(size(v_kmph)),'b','LineWidth',2);

plot(v_kmph,Ftotal,'k','LineWidth',2);

grid on;

xlabel('Vehicle Speed (km/h)');

ylabel('Force (N)');

title('Braking Force Components');

legend('Aerodynamic Drag','Rolling Resistance',...
       'Total Resistive Force','Location','northwest');
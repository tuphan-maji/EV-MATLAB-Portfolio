% Motor Selection

% Load Requirements
Load_Torque = 50;      % Nm
Load_Speed = 1500;     % rpm
Safety_Factor = 1.25;  % 25% margin

% Calculate Required Power
omega = (2*pi*Load_Speed)/60;      % rad/s
Required_Power = Load_Torque * omega;  % W

Required_Power_kW = Required_Power/1000;

fprintf('Required Torque = %.2f Nm\n', Load_Torque);
fprintf('Required Speed  = %.2f rpm\n', Load_Speed);
fprintf('Required Power  = %.2f kW\n', Required_Power_kW);

% Available Motors Database
Motor_Name = {'M1','M2','M3','M4','M5'};
Rated_Power_kW = [3 5.5 7.5 11 15];
Rated_Torque = [19 35 48 70 95];
Rated_Speed = [1450 1460 1470 1480 1490];

% Motor Selection
Selected = [];

for i = 1:length(Motor_Name)

    if Rated_Power_kW(i) >= Required_Power_kW*Safety_Factor && ...
            Rated_Torque(i) >= Load_Torque*Safety_Factor

        Selected = i;
        break;
    end

end

% Display Result
if isempty(Selected)
    fprintf('\nNo suitable motor found.\n');
else
    fprintf('\nSelected Motor: %s\n', Motor_Name{Selected});
    fprintf('Rated Power  : %.2f kW\n', Rated_Power_kW(Selected));
    fprintf('Rated Torque : %.2f Nm\n', Rated_Torque(Selected));
    fprintf('Rated Speed  : %.0f rpm\n', Rated_Speed(Selected));
end

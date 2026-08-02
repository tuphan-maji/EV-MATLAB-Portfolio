clc;
clear;
close all;

% Given Data
Vin = 48;
eta = 0.90;
fs = 50e3;

Vout = [-24 -72];
Vo = abs(Vout);

% Calculations
D = Vo ./ (eta*Vin + Vo);

Ts = 1/fs;
Ton = D*Ts;
Toff = (1-D)*Ts;

% Display Results
disp('Results')
disp(table(Vout',D',Ton'*1e6,Toff'*1e6,...
    'VariableNames',{'Vout_V','DutyCycle','Ton_us','Toff_us'}))

% Plot 1: Duty Cycle
figure;
plot(abs(Vout),D,'o-b','LineWidth',2,'MarkerSize',8);
grid on;
xlabel('Output Voltage Magnitude |V_o| (V)');
ylabel('Duty Cycle D');
title('Duty Cycle vs Output Voltage');

% Plot 2: TON and TOFF
figure;
plot(abs(Vout),Ton*1e6,'s-r','LineWidth',2);
hold on;
plot(abs(Vout),Toff*1e6,'d-k','LineWidth',2);
grid on;
xlabel('Output Voltage Magnitude |V_o| (V)');
ylabel('Time (\mus)');
title('TON and TOFF');
legend('TON','TOFF','Location','best');

% Plot 3: Bar Graph
figure;
bar(abs(Vout),[Ton' Toff'],'grouped');
grid on;
xlabel('|V_o| (V)');
ylabel('Time (s)');
title('TON and TOFF Comparison');
legend('TON','TOFF');

% Plot 4: Efficiency
figure;
bar(abs(Vout),eta*100*ones(size(Vout)));
grid on;
xlabel('|V_o| (V)');
ylabel('Efficiency (%)');
title('Converter Efficiency');
ylim([0 100]);
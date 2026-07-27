
% DC-DC BOOST CONVERTER EFFICIENCY ANALYSIS
% Suitable for EV Power Electronics Portfolio


clc;
clear;
close all;

%INPUT PARAMETERS 

Vin = 24;              % Input Voltage (V)
Vo = 48;               % Output Voltage (V)
Po = 300;              % Output Power (W)

fs = 50e3;             % Switching Frequency (Hz)
eff_guess = 0.95;      % Initial efficiency guess

% COMPONENT PARAMETERS 

% MOSFET
Rds_on = 0.04;         % ON resistance (Ohm)
tr = 40e-9;            % Rise time (s)
tf = 45e-9;            % Fall time (s)

% Diode
Vf = 0.75;             % Forward voltage (V)
Rd = 0.015;            % Dynamic resistance (Ohm)

% Inductor
RL = 0.03;             % Winding resistance (Ohm)

% Capacitor
ESR = 0.01;            % Equivalent Series Resistance (Ohm)

Ripple = 0.20;         % 20% ripple current

%BASIC CALCULATIONS

Duty = 1 - Vin/Vo;

Io = Po/Vo;

Pin = Po/eff_guess;

Iin = Pin/Vin;

DeltaIL = Ripple*Iin;

IL_rms = sqrt(Iin^2 + (DeltaIL^2)/12);

%POWER LOSSES 

% MOSFET Conduction Loss
Pmos_cond = IL_rms^2 * Rds_on * Duty;

% MOSFET Switching Loss
Pmos_sw = 0.5 * Vin * Iin * (tr + tf) * fs;

% Diode Conduction Loss
Pdiode = Io*Vf + Io^2*Rd;

% Inductor Copper Loss
Pinductor = IL_rms^2 * RL;

% Capacitor ESR Loss
Iripple = DeltaIL/(2*sqrt(3));

Pcap = Iripple^2 * ESR;

% Total Loss

Ploss = Pmos_cond + ...
        Pmos_sw + ...
        Pdiode + ...
        Pinductor + ...
        Pcap;

%FFICIENCY 

Pin_actual = Po + Ploss;

Efficiency = (Po/Pin_actual)*100;

%  DISPLAY RESULTS 

fprintf('\n');
fprintf('==============================================\n');
fprintf(' BOOST CONVERTER EFFICIENCY ANALYSIS\n');
fprintf('==============================================\n');

fprintf('\nInput Voltage           : %.2f V',Vin);
fprintf('\nOutput Voltage          : %.2f V',Vo);
fprintf('\nOutput Power            : %.2f W',Po);

fprintf('\nDuty Cycle              : %.3f',Duty);

fprintf('\nInput Current           : %.3f A',Iin);
fprintf('\nOutput Current          : %.3f A',Io);

fprintf('\n\n--------------- LOSSES ----------------');

fprintf('\nMOSFET Conduction Loss  : %.3f W',Pmos_cond);
fprintf('\nMOSFET Switching Loss   : %.3f W',Pmos_sw);
fprintf('\nDiode Loss              : %.3f W',Pdiode);
fprintf('\nInductor Loss           : %.3f W',Pinductor);
fprintf('\nCapacitor ESR Loss      : %.3f W',Pcap);

fprintf('\n---------------------------------------');

fprintf('\nTotal Loss              : %.3f W',Ploss);

fprintf('\nInput Power             : %.3f W',Pin_actual);

fprintf('\nConverter Efficiency    : %.2f %%',Efficiency);

fprintf('\n==============================================\n');

%PIE CHART 

Losses = [Pmos_cond Pmos_sw Pdiode Pinductor Pcap];

labels = {'MOSFET Cond','MOSFET Switching',...
          'Diode','Inductor','Capacitor'};

figure;

pie(Losses,labels)

title('Boost Converter Loss Distribution')

% BAR GRAPH 

figure;

bar(Losses)

grid on

set(gca,'XTickLabel',labels)

ylabel('Power Loss (W)')

title('Component-wise Power Loss')

%EFFICIENCY CURVE

Power = 50:25:500;

Eff = zeros(size(Power));

for k = 1:length(Power)

    Io = Power(k)/Vo;
    Iin = (Power(k)/eff_guess)/Vin;

    DeltaIL = Ripple*Iin;

    IL_rms = sqrt(Iin^2 + DeltaIL^2/12);

    Pmos_cond = IL_rms^2*Rds_on*Duty;

    Pmos_sw = 0.5*Vin*Iin*(tr+tf)*fs;

    Pdiode = Io*Vf + Io^2*Rd;

    Pinductor = IL_rms^2*RL;

    Iripple = DeltaIL/(2*sqrt(3));

    Pcap = Iripple^2*ESR;

    Ploss = Pmos_cond + Pmos_sw + ...
            Pdiode + Pinductor + Pcap;

    Pin = Power(k)+Ploss;

    Eff(k)=100*Power(k)/Pin;

end

figure;

plot(Power,Eff,'LineWidth',2)

grid on

xlabel('Output Power (W)')

ylabel('Efficiency (%)')

title('Boost Converter Efficiency vs Output Power')
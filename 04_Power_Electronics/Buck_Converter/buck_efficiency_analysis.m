clc;
clear;

Pout = 500;

Pcopper = 10;
Pcore = 5;
Pswitch = 8;
Pother = 3;

Ploss = Pcopper + Pcore + Pswitch + Pother;

Pin = Pout + Ploss;

Efficiency = (Pout/Pin)*100;

fprintf('Converter Efficiency = %.2f %%\n',Efficiency);

figure;
pie([Pcopper Pcore Pswitch Pother]);
legend('Copper','Core','Switching','Others');
title('Buck Converter Loss Distribution');
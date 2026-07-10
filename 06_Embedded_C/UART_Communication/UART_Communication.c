/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/
#include<stdint.h>
#include<stdio.h>
int main() {
    float batteryVoltage = 320.0;
    float batteryCurrent = 30.0;
    uint8_t batteryTemperature = 32;
    uint8_t batterySOC = 82;
    
   printf("TX -> Battery Voltage : %.1f V\n", batteryVoltage);

printf("TX -> Battery Current : %.1f A\n", batteryCurrent);


printf("TX -> Battery Temperature : %d C\n", batteryTemperature);


printf("TX -> Battery SOC : %d %%\n", batterySOC);
}
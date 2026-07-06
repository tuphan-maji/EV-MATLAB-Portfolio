

#include <stdio.h>

int main()
{
    float batteryCapacity = 60.0;  //Ah
    float initialSOC = 100.0;       // %
    float current = 10.0;           // A
    float time = 1.0;               // hour
    
    float chargeUsed;
    float remainingCharge;
    float SOC;
    
    chargeUsed = current * time;
    remainingCharge = batteryCapacity - chargeUsed;
    SOC = (remainingCharge/batteryCapacity)*100;
    
    printf("Remaining Charge = %0.2f Ah\n",remainingCharge);
    printf("current SOC = %0.2f %\n",SOC);
    

}
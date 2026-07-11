/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/
#include <stdio.h>
#include <stdint.h>

/* Simulated EEPROM memory */
uint8_t EEPROM[256] = {0};

/* SPI Transfer Function */
uint8_t SPI_Transfer(uint8_t data)
{
    printf("SPI Transfer : 0x%02X\n", data);
    return data;
}

/* Chip Select Functions */
void CS_Low(void)
{
    printf("CS LOW\n");
}

void CS_High(void)
{
    printf("CS HIGH\n");
}

/* EEPROM Write Function */
void EEPROM_Write(uint16_t address, uint8_t data)
{
    /* Write Enable */
    CS_Low();
    SPI_Transfer(0x06);
    CS_High();

    /* Write Command */
    CS_Low();
    SPI_Transfer(0x02);
    SPI_Transfer((address >> 8) & 0xFF);
    SPI_Transfer(address & 0xFF);
    SPI_Transfer(data);
    CS_High();

    EEPROM[address] = data;

    printf("\nWrite Completed.\n\n");
}

/* EEPROM Read Function */
uint8_t EEPROM_Read(uint16_t address)
{
    uint8_t data;

    CS_Low();
    SPI_Transfer(0x03);
    SPI_Transfer((address >> 8) & 0xFF);
    SPI_Transfer(address & 0xFF);

    data = EEPROM[address];

    CS_High();

    return data;
}

int main(void)
{
    uint8_t readData;

    printf("SPI EEPROM Practical Example\n\n");

    EEPROM_Write(0x0010, 0x55);

    readData = EEPROM_Read(0x0010);

    printf("\nData Read = 0x%02X\n", readData);

    return 0;
}
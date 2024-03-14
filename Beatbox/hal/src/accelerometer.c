#include "hal/accelerometer.h"
#include "hal/general_command.h"
#include "hal/beatbox.h"
//#include "period_timer"

#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <stdbool.h>

#define I2CDRV_LINUX_BUS1 "/dev/i2c-1"

#define I2C_DEVICE_ADDRESS 0x18

#define REG_X_L 0x28
#define REG_X_H 0x29
#define REG_Y_L 0x2A
#define REG_Y_H 0x2B
#define REG_Z_L 0x2C
#define REG_Z_H 0x2D



static pthread_t accelerometerThread;

static bool shutdown = false;

static int initI2cBus(char *bus, int address)
{
    int i2cFileDesc = open(bus, O_RDWR);
    int result = ioctl(i2cFileDesc, I2C_SLAVE, address);
    if (result < 0)
    {
        perror("I2C: Unable to set I2C device to slave address.");
        exit(1);
    }
    return i2cFileDesc;
}

static void writeI2cReg(int i2cFileDesc, unsigned char regAddr, unsigned char value)
{
    unsigned char buff[2];
    buff[0] = regAddr;
    buff[1] = value;
    int res = write(i2cFileDesc, buff, 2);
    if (res != 2)
    {
        perror("I2C: Unable to write i2c register.");
        exit(1);
    }
}

static unsigned char readI2cReg(int i2cFileDesc, unsigned char regAddr)
{
    // To read a register, must first write the address
    int res = write(i2cFileDesc, &regAddr, sizeof(regAddr));
    if (res != sizeof(regAddr))
    {
        perror("I2C: Unable to write to i2c register.");
        exit(1);
    }
    // Now read the value and return it
    char value = 0;
    res = read(i2cFileDesc, &value, sizeof(value));
    if (res != sizeof(value))
    {
        perror("I2C: Unable to read from i2c register");
        exit(1);
    }
    return value;
}

void initializeAccelerometer()
{
    runCommand("config-pin P9_18 i2c");
    runCommand("config-pin P9_17 i2c");

    int i2cFileDesc = initI2cBus(I2CDRV_LINUX_BUS1, I2C_DEVICE_ADDRESS);

    writeI2cReg(i2cFileDesc, 0x20, 0x27);
}

int16_t readAccelerometerAxis(int i2cFileDesc, unsigned char regLSB, unsigned char regMSB)
{
    // Accelerometer readings
    unsigned char buff[2];

    // Read low byte
    buff[0] = readI2cReg(i2cFileDesc, regLSB);
    // Read high byte
    buff[1] = readI2cReg(i2cFileDesc, regMSB);

    // Combine low and high bytes to get full 16-bit value
    int16_t axisValue = (buff[1] << 8) | buff[0];

    return axisValue;
}

void convertAccelerometerReadingToSound(int16_t x, int16_t y, int16_t z)
{
    // Define thresholds for each direction
    int thresholdX = 50;
    int thresholdY = 50;
    int thresholdZ = 500;

    // Check X-axis shake
    if (x > thresholdX)
    {
        Beatbox_queueTestSound(0);
    }

    // Check Y-axis shake
    if (y > thresholdY)
    {
        Beatbox_queueTestSound(1);
    }

    // Check Z-axis shake
    if (z > thresholdZ)
    {
        Beatbox_queueTestSound(2);
    }
}

void *updateAccelerometerReading(void *args)
{
    (void)args;
    int i2cFileDesc = initI2cBus(I2CDRV_LINUX_BUS1, I2C_DEVICE_ADDRESS);
    while (!shutdown)
    {
        //Period_markEvent(PERIOD_EVENT_SAMPLE_ACCELEROMETER);

        // printf("x low: %d\n", readI2cReg(i2cFileDesc, REG_X_L));
        // printf("x high: %d\n", readI2cReg(i2cFileDesc, REG_X_H));
        // printf("y low: %d\n", readI2cReg(i2cFileDesc, REG_Y_L));
        // printf("y high: %d\n", readI2cReg(i2cFileDesc, REG_Y_H));
        // printf("z low: %d\n", readI2cReg(i2cFileDesc, REG_Z_L));
        // printf("z high: %d\n", readI2cReg(i2cFileDesc, REG_Z_H));

        int16_t x = readAccelerometerAxis(i2cFileDesc, REG_X_L, REG_X_H);
        int16_t y = readAccelerometerAxis(i2cFileDesc, REG_Y_L, REG_Y_H);
        int16_t z = readAccelerometerAxis(i2cFileDesc, REG_Z_L, REG_Z_H);

        convertAccelerometerReadingToSound(x, y, z);

        //Beatbox_queueTestSound(0);


        sleepForMs(1000); // should be 10ms but it will make the sound play super fast right now, problem
    }
   
    close(i2cFileDesc);

    return NULL;
}

void createAccelerometerThread()
{
    pthread_create(&accelerometerThread, NULL, updateAccelerometerReading, NULL);
}

void joinAccelerometerThread()
{
    pthread_join(accelerometerThread, NULL);
}

void shutdownAccelerometer()
{
    shutdown = true;
}
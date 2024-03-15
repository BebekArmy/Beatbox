#include "hal/beatbox.h"
#include "hal/audio_mixer.h"
#include "hal/gpio.h"
#include "hal/joystick.h"
#include "hal/accelerometer.h"
#include "udp.h"

#include <pthread.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

pthread_mutex_t shutdownMutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t shutdownCond = PTHREAD_COND_INITIALIZER;

void createThreads()
{
    AudioMixer_init();
    Beatbox_init();
    createUDPThread();

    initializeAccelerometer();
    createAccelerometerThread();

    initializeJoystick();
    createJoystickThread();

    
}

void joinThreads()
{
    joinUDPThread();
    Beatbox_cleanup();
    AudioMixer_cleanup();

    shutdownAccelerometer();
    joinAccelerometerThread();

    shutdownJoystick();
    joinJoystickThread();

}

void waitShutdown()
{
    pthread_mutex_lock(&shutdownMutex);
    pthread_cond_wait(&shutdownCond, &shutdownMutex);
    pthread_mutex_unlock(&shutdownMutex);
}

void signalShutdown()
{
    pthread_mutex_lock(&shutdownMutex);
    pthread_cond_signal(&shutdownCond);
    pthread_mutex_unlock(&shutdownMutex);
}
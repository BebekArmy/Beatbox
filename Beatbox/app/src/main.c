#include "hal/audio_mixer.h"
#include "hal/general_command.h"
#include "hal/beatbox.h"
#include "hal/gpio.h"
#include "hal/joystick.h"
#include "hal/accelerometer.h"
#include "shutdown.h"

#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>

int main(void)
{
    createThreads();

    waitShutdown();
    
    joinThreads();
    

    return 0;
}
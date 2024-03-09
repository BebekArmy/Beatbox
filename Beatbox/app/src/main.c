#include "hal/audio_mixer.h"
#include "hal/general_command.h"
#include "hal/beatbox.h"

#include <stdio.h>
#include <stdlib.h>
#include <alsa/asoundlib.h>


#define SOURCE_FILE1 "wave-files/100060__menegass__gui-drum-splash-hard.wav"
#define SOURCE_FILE2 "wave-files/100053__menegass__gui-drum-cc.wav"
#define SOURCE_FILE3 "wave-files/100051__menegass__gui-drum-bd-hard.wav"

#define SAMPLE_RATE   44100
#define NUM_CHANNELS  1
#define SAMPLE_SIZE   (sizeof(short))



int main(void)
{
	AudioMixer_init();
    Beatbox_init();

    while(1)
    {
        int input;
        printf("Enter 0 for beat 0, 1 for beat 1, 2 for beat 2, 3 to exit\n");
        scanf("%d", &input);
        if(input == 0)
        {
            Beatbox_changePattern(0);
        }
        else if(input == 1)
        {
            Beatbox_changePattern(1);
        }
        else if(input == 2)
        {
            Beatbox_changePattern(2);
        }
        else if(input == 3)
        {
            break;
        }
    }


    
    
    Beatbox_cleanup();

    AudioMixer_cleanup();
    
    
    

    return 0;
}
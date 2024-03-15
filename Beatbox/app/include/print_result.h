#ifndef _PRINT_RESULT_H_
#define _PRINT_RESULT_H_

/* Module to initialize and cleanup the printing thread.
The printing thread handles printing audio_mixer and accelerometer data from the previous
second to the terminal every second.
*/

#include <stdbool.h>

void createPrintingThread();
void joinPrintingThread();
void shutdownPrintingThread();

#endif
#ifndef _BEATBOX_H_
#define _BEATBOX_H_

#include <stdint.h>

#define BEATBOX_MAX_BPM 300
#define BEATBOX_MIN_BPM 40

void Beatbox_queueTestSound(int index);
void Beatbox_changeBpm(int newBpm);
void Beatbox_incrementBpm();
void Beatbox_decrementBpm();
int Beatbox_getBpm();
void Beatbox_init();
void Beatbox_changePattern(int patternNumber);
int Beatbox_getPatternNumber();
void Beatbox_incrementPattern();
void Beatbox_cleanup();


#endif
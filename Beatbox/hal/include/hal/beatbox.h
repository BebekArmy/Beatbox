#ifndef _BEATBOX_H_
#define _BEATBOX_H_

#include <stdint.h>


void Beatbox_changeBpm(int newBpm);
void Beatbox_init();
void Beatbox_changePattern(int patternNumber);
void Beatbox_cleanup();


#endif
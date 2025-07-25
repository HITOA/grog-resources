/**
*   Grog Core VCL Library
*/

#ifndef GROG_AUDIO_CHANNEL_COUNT
    #define GROG_AUDIO_CHANNEL_COUNT 2
#endif

struct AudioBuffer<int ChannelCount> {
    array<vfloat, ChannelCount> channels;
}

in AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> _AudioInput;
out AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> _AudioOutput;
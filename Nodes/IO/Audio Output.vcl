/**
*   VCL Audio output node
*/

#include <Grog/Core.vcl>


in AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> input;

[NodeProcess]
void Main() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i)
        _AudioOutput.channels[i] = input.channels[i];
}
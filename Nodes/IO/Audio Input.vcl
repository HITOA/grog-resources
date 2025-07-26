/**
*   VCL Audio input node
*/

#include <Grog/Core.vcl>


out AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> output;

[NodeProcess]
void Main() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i)
        output.channels[i] = _AudioInput.channels[i];
}
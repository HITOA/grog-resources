/**
*   VCL Gain Simple gain node
*/

@import "Grog/Core.vcl";


in AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> input;
in vfloat gain;

out AudioBuffer<GROG_AUDIO_CHANNEL_COUNT> output;

[NodeProcess]
void Process() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i)
        output.channels[i] = input.channels[i] * gain;
}
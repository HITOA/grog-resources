/**
*   VCL Gain node
*/

@import "Grog/Core.vcl";

@grog_define NODE_NAME = "Gain";


[Name="Audio Input"]
in Audio<GROG_AUDIO_CHANNEL_COUNT> input;
[Name="Gain Level", ToolTip="Linear gain factor"]
in vfloat gain;

[Name="Audio Output"]
out Audio<GROG_AUDIO_CHANNEL_COUNT> output;

[NodeProcess]
void Process() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i)
        output.channels[i] = input.channels[i] * gain;
}
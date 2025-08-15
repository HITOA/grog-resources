/**
*   VCL Delay node
*/

@import "Grog/Core.vcl";
@import "Grog/Delay.vcl";

@grog_define NODE_NAME = "Delay";

@grog_define_option DELAY "Delay" = 1;


[Name="Audio Input"]
in Audio<GROG_AUDIO_CHANNEL_COUNT> input;

[Name="Audio Output"]
out Audio<GROG_AUDIO_CHANNEL_COUNT> output;

array<Delay<float, DELAY>, GROG_AUDIO_CHANNEL_COUNT> delays;

[NodeProcess]
void Process() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i) {
        DelayWriteVector(delays[i], input.channels[i]);
        output.channels[i] = DelayReadVector<vfloat>(delays[i], DELAY);
    }
}
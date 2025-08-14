/**
*   VCL Delay node
*/

@import "Grog/Core.vcl";
@import "Grog/Delay.vcl";

@grog_define NODE_NAME = "Delay";

@grog_define_option DELAY_MAX_LENGTH "Delay max length" = 44100;


[Name="Audio Input"]
in Audio<GROG_AUDIO_CHANNEL_COUNT> input;
[Name="Delay"]
in vint delay;

[Name="Audio Output"]
out Audio<GROG_AUDIO_CHANNEL_COUNT> output;

array<Delay<float, DELAY_MAX_LENGTH>, GROG_AUDIO_CHANNEL_COUNT> delays;

[NodeProcess]
void Process() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i) {
        DelayWriteVector(delays[i], input.channels[i]);
        output.channels[i] = DelayReadVectorVector(delays[i], delay);
    }
}
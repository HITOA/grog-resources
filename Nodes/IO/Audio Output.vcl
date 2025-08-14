/**
*   VCL Audio output node
*/

@import "Grog/Core.vcl";

@grog_define NODE_NAME = "Audio Output";
@grog_define NODE_AS_GRAPH_OUTPUT;


[Name="Audio Input"]
in Audio<GROG_AUDIO_CHANNEL_COUNT> input;

[NodeProcess]
void Process() {
    for (int i = 0; i < GROG_AUDIO_CHANNEL_COUNT; ++i)
        _AudioOutput.channels[i] = input.channels[i];
}
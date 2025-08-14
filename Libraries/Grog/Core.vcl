/**
*   Grog Core VCL Library
*/

@if !defined(GROG_AUDIO_CHANNEL_COUNT) {
    @define GROG_AUDIO_CHANNEL_COUNT = 2;
}


struct Audio<int ChannelCount> {
    array<vfloat, ChannelCount> channels;
}

in Audio<GROG_AUDIO_CHANNEL_COUNT> _AudioInput;
out Audio<GROG_AUDIO_CHANNEL_COUNT> _AudioOutput;
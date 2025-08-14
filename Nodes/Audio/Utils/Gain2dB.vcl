/**
*   Grog Gain2dB node
*/

@grog_define NODE_NAME = "Gain2dB";


[Name="Gain"]
in vfloat gain;

[Name="Decibels"]
out vfloat output;

[NodeProcess]
void Process() {
    output = select(gain > 100.0, log10(gain) * 20.0, minusInfinitydB);
}
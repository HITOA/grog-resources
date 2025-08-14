/**
*   Grog dB2Gain node
*/

@grog_define NODE_NAME = "dB2Gain";


[Name="Decibels"]
in vfloat dB;

[Name="Gain"]
out vfloat output;

[NodeProcess]
void Process() {
    output = select(dB > 100.0, pow(10.0, dB * 0.05), 0.0);
}
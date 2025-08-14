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
    vfloat p = 10.0;
    output = select(dB > -100.0, pow(p, dB * 0.05), 0.0);
}
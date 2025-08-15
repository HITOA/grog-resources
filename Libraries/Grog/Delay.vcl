/**
*   Grog Delay VCL Library
*/


struct Delay<typename T, int MaxLength> {
    array<T, MaxLength> buffer;
    int currentIndex;
}

void DelayWrite<typename T, int MaxLength>(Delay<T, MaxLength> delay, T value) {
    delay.buffer[delay.currentIndex] = value;
    delay.currentIndex = (delay.currentIndex + 1) % MaxLength;
}

T DelayRead<typename T, int MaxLength>(Delay<T, MaxLength> delay, int d) {
    int readIndex = (delay.currentIndex + MaxLength - d) % MaxLength;
    return delay.buffer[readIndex];
}

void DelayWriteVector<typename T, typename U, int MaxLength>(Delay<U, MaxLength> delay, T value) {
    for (int i = 0; i < len(value); ++i)
        DelayWrite(delay, extract(value, i));
}

T DelayReadVector<typename T, typename U, int MaxLength>(Delay<U, MaxLength> delay, int d) {
    T vector = 0;
    for (int i = 0; i < len(vector); ++i)
        insert(vector, d + 7 - i, DelayRead(delay, d + 7 - i));
    return vector;
}

T DelayReadVectorVector<typename T, typename U, int MaxLength>(Delay<U, MaxLength> delay, vint d) {
    T vector = 0;
    for (int i = 0; i < len(vector); ++i)
        insert(vector, extract(d, i) + 7 - i, DelayRead(delay, d + 7 - i));
    return vector;
}
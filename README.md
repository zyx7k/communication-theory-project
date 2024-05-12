# QPSK Modulation
The code here was used for S24-EC5.203 course project. The code contained in this repository implements pi/4 phase shifted Quadrature Phase Shift Keying Modulation system in MATLAB.

The QPSK constellation being implemented is as follows:
![image](https://github.com/zyx7k/ct-project/assets/141494216/08028491-b5e5-4d3d-9f61-91063d9c14d4)

The system by default modulates code to frequency of 1 Mega-Hertz and sampling is done at a frequency 10 times that of the carrier frequency. These parameters can be modified in the modulate.m, channel_with_memory.m and demodulate.m files.

The system is as follows :
![image](https://github.com/zyx7k/ct-project/assets/141494216/ea128739-e06f-40ea-a35b-6ec9f3c1581e)

The included code can be used for simulating mono audio through a QPSK system without much modifications. Stereo Audio can be simulated by separating each channel into its own vector and then combining the resulting vectors into a single matrix for stereo audio.

The default noise PSD used here is 0.01, which can be modified in channel_memoryless.m and channel_with_memory.m

Energy distribution for impulses in the channel with memory can also be varied using two scaling parameters 'a' and 'b' in channel_with_memory.m

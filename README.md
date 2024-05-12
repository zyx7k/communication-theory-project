# QPSK Modulation
The code here was used for S24-EC5.203 course project. The code contained in this repository implements pi/4 phase shifted Quadrature Phase Shift Keying Modulation system in MATLAB.

The QPSK constellation being implemented is as follows:
![image](https://github.com/zyx7k/ct-project/assets/141494216/08028491-b5e5-4d3d-9f61-91063d9c14d4)

The system by default modulates code to frequency of 1 Mega-Hertz and sampling is done at a frequency 10 times that of the carrier frequency. These parameters can be modified in the modulate.m, channel_with_memory.m and demodulate.m files.

The system is as follows :
![image](https://github.com/zyx7k/ct-project/assets/141494216/ea128739-e06f-40ea-a35b-6ec9f3c1581e)

The included code can be used for simulating mono audio through a QPSK system without much modifications. Stereo Audio can be simulated by separating each channel into its own vector and then combining the resulting vectors into a single matrix for stereo audio.

The code can implement line coding using raised cosine pulses and rectangular pulses using the functions lineCoding_raisedCosine.m and lineCoding_rect.m

The encoder is setup to implement gray coding and the decoder to do the reverse of it.

The default noise PSD used here is 0.01, which can be modified in channel_memoryless.m and channel_with_memory.m

Energy distribution for impulses in the channel with memory can also be varied using two scaling parameters 'a' and 'b' in channel_with_memory.m

The D/A converter uses 14 bits per sample, this can be varied in the file d2a.m

The function snr_pe_calc.m is used to generate Probability of Error vs SNR plots.

main.m tests all the blocks as mentioned in the block diagram and can be modified for use.

Included files project.wav was the original stereo audio which after being simulated through this QPSK system was received as test_out.wav (mono audio)

The included project report can be used to further understand and verify functionality of the code as it includes plots for each stages outputs and further explanation of how the system is supposed to function

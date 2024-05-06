[stereoAudio, Fs] = audioread("project.wav");
monoAudio = (stereoAudio(:,1))'; %monoaudio is now a row vector
digitalBits = a2d(monoAudio); %Stream of bits

% Send bits to the encoder
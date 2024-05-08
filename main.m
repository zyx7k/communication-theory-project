[stereoAudio, Fs] = audioread("project.wav");
monoAudio = (stereoAudio(:,1))'; %monoaudio is now a row vector
digitalBits = a2d(monoAudio); %Stream of bits
% Send bits to the encoder

encoded_sig = cell(1,2); % preallocating a cell for inPhase component and quadrature phase components
[encoded_sig{1},encoded_sig{2}] = encoder(digitalBits);

lineCoded_sig = cell(1,2); % preallocating a cell for inPhase lineCodin and quadrature phase lineCoding
lineCoded_sig{1} = lineCoding(encoded_sig{1});
lineCoded_sig{2} = lineCoding(encoded_sig{2});

% Modulation
modulated_sig = modulate(lineCoded_sig);

% Adding Channel Noise
rx_sig = channel_with_memory(modulated_sig,1,1);

% Demodulation 
demod_sig = demodulate(rx_sig);

% Line Decoding
decoded_sig = cell(1,2);
decoded_sig{1} = lineDecoding(demod_sig{1});
decoded_sig{2} = lineDecoding(demod_sig{2});

% Decoder
digits = decoder(decoded_sig{1},decoded_sig{2});

time_vec = 0:1/(10^3):length(modulated_sig)/(10^3);
time_vec = time_vec(1:end-1);
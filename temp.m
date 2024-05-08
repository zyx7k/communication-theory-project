[stereoAudio, Fs] = audioread("project.wav");
monoAudio = stereoAudio(:,1)'; % monoAudio is now a row vector
digitalSignal = a2d(monoAudio);
analogSignal = d2a(digitalSignal);
audiowrite("outputtest.wav", analogSignal, Fs);
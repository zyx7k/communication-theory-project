filename = 'project.wav';

[y,fs] = audioread(filename);

y = transpose(y);
y_left = y(1,:);
y_right = y(2,:);

in = {y_left,y_right};

tx_sig = modulate(in);
rx_sig = channel_with_memory(tx_sig,1,1);

out = demodulate(rx_sig);

out{1} = smoothdata(out{1},"sgolay",100);
out{2} = smoothdata(out{2},"sgolay",100);

out{1} = out{1}*10;
out{2} = out{2}*10;

audio_out = [out{1};out{2}];
audio_out = transpose(audio_out);

mix_out = [out{1};in{2}];
mix_out = transpose(mix_out);
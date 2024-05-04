function out = channel_with_memory(in,a,b)
    fs = 48000; %for the given project.wav file
    Tb = 6.5104e-07; %need to change, according to line coding
    t = 0:1/fs:length(in)/fs;
    out = zeros(1,length(in));
    ch_filt = a*impulse(t) + (1-a)*impulse(t-b*Tb);
    
    filt_out = conv(ch_filt,in);

    for k = 1:length(in)
        out(k) = filt_out(k) + randn; 
    end
end
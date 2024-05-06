function out = channel_with_memory(in,a,b)
    fc = 100;
    fs = 10*fc; 
    Tb = 6.5104e-07; %need to change, according to line coding
    t = 0:1/fs:length(in)/fs;
    out = zeros(1,length(in));
    ch_filt = a*impulse(t) + (1-a)*impulse(t-b*Tb);
    
    filt_out = conv(ch_filt,in);

    for k = 1:length(in)
        out(k) = filt_out(k) + 0.01*randn; 
    end
end
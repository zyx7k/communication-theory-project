function out = demodulate(in)
    fc = 100;
    fs = 10*fc;
    t = 0:1/fs:(length(in)/fs);
    for count = 1:length(in)
        out{1}(count) = in(count).*cos(2*pi*fc*t(count));
        out{2}(count) = in(count).*sin(2*pi*fc*t(count));
    end

    out{1} = lowpass(out{1},fc/100,fs);
    out{2} = lowpass(out{2},fc/100,fs);
end
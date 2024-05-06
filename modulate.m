function mod_sig = modulate(sig)
    fc = 100;
    fs = 10*fc;
    t = 0:1/fs:(length(sig{1})/fs);
    for count = 1:length(sig{1})
        modInPhase(count) = sig{1}(count).*cos(2*pi*fc*t(count)+(pi/4));
        modQuadrature(count) = sig{2}(count).*sin(2*pi*fc*t(count)+(pi/4));
    end
    mod_sig = modInPhase + modQuadrature;
end
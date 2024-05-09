function out = channel_memoryless(in)
    out = zeros(1,length(in));
    for k = 1:length(in)
        out(k) = in(k) + 0.1*randn;
    end
end
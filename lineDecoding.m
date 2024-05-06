function lineDecodedSignal = lineDecoding(demodulatedSignal)
    % Decide length of one symbol:
    % Symbol length after convolution with the pulse of length 17, and the 
    % upsampled input of length 17 is 33. peak is at sample 9.
    % So we will sample at every 9th sample every 33th sample

    N = length(demodulatedSignal);
    N = N/33;
    lineDecodedSignal = ones(1, N);

    for k = 0 : N-1
        sampledValue = demodulatedSignal(33*k+9);
        if(sampledValue<0)
            lineDecodedSignal(k) = -1;
        end
    end
end
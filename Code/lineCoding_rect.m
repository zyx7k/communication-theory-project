function lineCodedSignal = lineCoding_rect(encodedSignal)

    % Upsample by the length of the filter for no ISI
    upsampledSignal = upsample(encodedSignal, 17);
    
    % Create Rectangular filter of length 17
    rect_filter = ones(1,17);

    % figure(1);
    % plot(rect_filter);

    lineCodedSignal = conv(upsampledSignal, rect_filter);

    % figure(2);
    % subplot(3,1,1);
    % stem(encodedSignal);
    % subplot(3,1,2);
    % stem(upsampledSignal);
    % subplot(3,1,3);
    % plot(lineCodedSignal);

end
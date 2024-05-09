function lineCodedSignal = lineCoding_raisedCosine(encodedSignal)

    % Upsample by the length of the filter for no ISI
    upsampledSignal = upsample(encodedSignal, 17);
    
    % Create Raised cosine filter
    rolloff_factor = 1; 
    samples_per_symbol = 4; 
    filter_span_in_symbols = 2;
    % Length of the filter is 17
    [rc_filter, ~] = raised_cosine(rolloff_factor, samples_per_symbol, filter_span_in_symbols);
    rc_filter_normalized = rc_filter / max(rc_filter);

    %figure(1);
    %plot(rc_filter);

    lineCodedSignal = conv(upsampledSignal, rc_filter_normalized);

    % figure(2);
    % subplot(3,1,1);
    % stem(encodedSignal);
    % subplot(3,1,2);
    % stem(upsampledSignal);
    % subplot(3,1,3);
    % plot(lineCodedSignal);

end
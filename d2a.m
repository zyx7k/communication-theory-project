function analogSignal = d2a(digitalSignal)
    % analogSignal = analogSignal/(2*max(analogSignal));
    % precision = 4;
    % codeword = [-0.5 : 10^(-precision) : 0.5];
    % quantizedArray = interp1(codeword, codeword, analogSignal, 'nearest', 'extrap');
    % quantizedArray = quantizedArray + 0.5;
    % quantizedArray = quantizedArray * 10^(precision);
    % minDigits = ceil(precision/log10(2));
    % digitalSignal = dec2bin(quantizedArray, minDigits);
    
    decimalArary = [];
    for k = 1 : length(digitalSignal)
        value = fix(digitalSignal(k)*10000)/10000; %upto 4 decimal places
        decimalArary = [decimalArary, bin2dec(value)];
    end
    
    decimalArary = decimalArary/10000;
    

end
function digitalSignal = a2d(analogSignal)
    analogSignal = analogSignal/(2*max(analogSignal));
    precision = 4;
    codeword = [-0.5 : 10^(-precision) : 0.5];
    quantizedArray = interp1(codeword, codeword, analogSignal, 'nearest', 'extrap');
    quantizedArray = quantizedArray + 0.5;
    quantizedArray = quantizedArray * 10^(precision);
    minDigits = ceil(precision/log10(2));
    digitalSignal = dec2bin(quantizedArray, minDigits);
end
function digitalSignal = a2d(analogSignal)
    
    % Get the signal in the range [-0.5, 0.5]
    analogSignal = analogSignal/(2*max(analogSignal));

    % We want correct upto 4 decimal places
    precision = 4;

    % Creating Quantization levels
    codeword = -0.5 : 10^(-precision) : 0.5;

    % Performing Quantization
    quantizedArray = interp1(codeword, codeword, analogSignal, 'nearest', 'extrap');

    % Adding 0.5 to get signal from [0, 1]
    quantizedArray = quantizedArray + 0.5;

    % Since there is 4 decimal places of accuracy, multiplying by 10^4 to
    % get integer values
    quantizedArray = quantizedArray * 10^(precision);

    % Minimum number of binary digits required to represent the decimal
    % number & Converting it to binar
    minDigits = ceil(precision/log10(2));
  
    digitalSignal = [];
    for number = quantizedArray
    % Get binary representation
        for i = minDigits-1:-1:0
            % Extract bit using bit shifting and bit masking
            bit = bitget(number, i+1);
            % Append to bitArray
            digitalSignal = [digitalSignal bit];
        end
    end
 
end
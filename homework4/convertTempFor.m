function convertedTemp = convertTempFor(input, direction)
StringLength = length(input);
if strcmp(direction, 'C2F') == 1
    for index = 1:StringLength
        convertedTemp(index) = input(index) * (9/5) + 32;
    end
elseif strcmp(direction, 'F2C') == 1
    for index = 1:StringLength
        convertedTemp(index) = (input(index) - 32) * (5/9);
    end
else
    disp('The input argument is invalid')
end



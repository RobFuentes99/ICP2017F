function convertedTemp = convertTempWhile(input, direction)
StringLength = length(input);
index = 1;
if strcmp(direction, 'C2F') == 1
    while index <= StringLength
        convertedTemp(index) = input(index) * (9/5) + 32;
        index = index + 1;
    end
elseif strcmp(direction, 'F2C') == 1
    while index <= StringLength
        convertedTemp(index) = (input(index) - 32) * (5/9);
        index = index + 1;
    end
else
    disp('The input argument is invalid')
end

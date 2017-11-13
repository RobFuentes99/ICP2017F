function convertedTemp = convertTempVec(input,direction)
if strcmp(direction, 'C2F') == 1
    convertedTemp = (input * (9/5)) + 32;
elseif strcmp(direction, 'F2C') == 1
    convertedTemp = (input - 32) * (5/9);
else
    disp('The input is not a valid argument')
end
a = input('Enter a number:');
if isnumeric(a)
    if (a >= 0)
        root = sqrt(a);
        disp(['Square root = ' num2str(root)]);
    elseif (a < 0)
        disp('The input number is negative, there is no square root.');
    end
else
    disp('Please enter a real number!');
end

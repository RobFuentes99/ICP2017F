
function Fib
in = input('Please enter a non-negative integer or type stop: ', 's');
if(strcmp(in, 'stop') == 1)
    return
else
    number = str2double(in);
    if(number == round(number) && number >= 0)
        disp(getFib(number));
        Fib;
    else
        disp('The input argument is not a non-negative integer!');
        Fib;
    end
end
function y = getFib(n_int)
if (n_int) == 0
    y = 0; 
elseif (n_int) == 1
    y = 1; 
elseif (n_int) > 1
    y = getFib((n_int) - 1) + getFib((n_int) - 2); 
end
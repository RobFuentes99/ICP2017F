function fibLoop
in = input('Please enter a non-negative integer or type stop: ', 's');
if(strcmp(in, 'stop') == 1)
    return
else
    number = str2double(in);
    if(number == round(number) && number >= 0)
        disp(getFib(number));
        fibLoop;
    else
        disp('The input argument is not a non-negative integer!');
        fibLoop;
    end
end
function fib = getFib(n_int)
if (n_int) == 0
    fib = 0; 
elseif (n_int) == 1
    fib = 1; 
else
    fib = 1;
    fibOld = 0;
    for i = 1:(n_int-1)
        fib = fib + fibOld;
        fibOld = fib; 
    end
end
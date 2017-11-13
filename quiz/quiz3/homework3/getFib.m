%Coding for Question 5 - Fibonacci's number


function y = getFib(n_int) %set function as equal to a variable, y
if (n_int) < 0
    disp('This number is not a non-negative integer') %Fibonacci's number starts at 0.
elseif (n_int) == 0
    y = 0; %first value is 0
elseif (n_int) == 1
    y = 1; %second value is 1
elseif (n_int) > 1
    y = getFib((n_int) - 1) + getFib((n_int) - 2); %after 0 & 1, Fibonacci's number follows this pattern.
elseif (n_int) == isa((n_int),char)
    disp('This is not a non-negative integer') %preventing inputs from being non-numerical
    disp('Please enter a non-negative integer: ');
elseif (n_int) == 'stop'
    return
end
end
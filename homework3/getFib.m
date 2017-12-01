function y = getFib(n_int) 
if (n_int) < 0
    disp('This number is not a non-negative integer') 
elseif (n_int) == 0
    y = 0; 
elseif (n_int) == 1
    y = 1; 
elseif (n_int) > 1
    y = getFib((n_int) - 1) + getFib((n_int) - 2); 
elseif (n_int) == isa((n_int),char)
    disp('This is not a non-negative integer') 
    disp('Please enter a non-negative integer: ');
elseif 
end
end
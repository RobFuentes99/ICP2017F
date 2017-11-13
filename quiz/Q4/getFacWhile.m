function getFacWhile(n)
if n == 0
    output = 1;
elseif n >=1
    new = n - 1;
    while n > 1
        output = n * new;
        n = output; 
        new = output - 1;
    end
end
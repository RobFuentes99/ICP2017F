function result = getFac(n)
if n == 0 
    result = 1;
else
    result = n * getFac(n-1);
end
function getLargestPrime(n)
    for i = n:-1:1
        if ~isprime(i)
            continue
        end
        disp(i)
        break
    end
end
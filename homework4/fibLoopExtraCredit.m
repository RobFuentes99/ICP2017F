function fibLoopExtraCredit()
    n = input('Please enter a non-negative integer or type stop: ', 's');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp(['fib(',num2str(n),') = ', num2str(getFib(n))]);
                handFib = @() getFib(n);
                timeFib = timeit(handFib);
                disp(['average runtime:', num2str(timeFib)])
                fib()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
    end
    
        function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fibVec = [0,1];
            for i = 3:n_int
                fibVec(i) = fibVec(i-1) + fibVec(i-2);
            end
            fib = fibVec(n_int);
        end
    end
end
    
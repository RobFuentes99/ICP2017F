function totalLogProb = getTotalLogProb(mu,sigma)
    global data nsample
    logProb = zeros(nsample,1);
    for isample = 1:nsample
        logProb(isample) = log(normpdf(data(isample),mu,sigma));
    end
    totalLogProb = sum (logProb);
end
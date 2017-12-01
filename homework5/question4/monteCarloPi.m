function montePI = monteCarloPi(nPoints)
    rng('shuffle');
    pointsInCircle = 0;
    for index = 1:nPoints
       yPoint = rand;
       xPoint = rand;
       if (xPoint^2 + yPoint^2) <= 1
           pointsInCircle = pointsInCircle + 1;
       end
    end
    montePI = 4*(pointsInCircle/nPoints);
end

nPoints = 100000000;
piApproximations = zeros(1,100);
xAxis = 1:1:100;
counter = 1;
for index = 1000000:1000000:nPoints
    piApproximations(counter) = monteCarloPi(index);
    counter = counter + 1;
end
plot(xAxis, piApproximations);
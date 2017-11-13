inTemps = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];

fFor = @()convertTempFor(inTemps, 'C2F');
tFor = timeit(fFor);
timeFor = ['The time it took to run the For-loop function is ' num2str(tFor)];
disp(timeFor)

fWhile = @()convertTempWhile(inTemps, 'C2F');
tWhile = timeit(fWhile);
timeWhile = ['The time it took to run the While-loop function is ' num2str(tWhile)];
disp(timeWhile)

fVec = @()convertTempVec(inTemps, 'C2F');
tVec = timeit(fVec);
timeVec = ['The time it took to run the Vector function is ' num2str(tVec)];
disp(timeVec)
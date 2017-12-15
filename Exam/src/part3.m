global dataVals timeArray GompGrowth;
dataVals = zeros(8,1);
dataVals(1) = 100000;
timeArray = [0, 10, 12, 14, 16, 18, 20, 22];
params = [10, 0.1, 1]; % initial values
tint = 0:.1:25;

figure();

openfig('part2.fig');
hold on;

for t = 1:7
    for z = 1:16
        dataVals(t+1) = dataVals(t+1) + sum(sum(cells(:,:,z,t)));
    end
end

%summing the values
optimizedParamVals = fminsearch(@sumLogs, params);
plot(tint, GompGrowth(tint, dataVals(1), optimizedParamVals(1), optimizedParamVals(2)), 'linewidth', 4, 'color', 'r', 'DisplayName', 'Gomertizan Fit');

%formatting the plotted figure
xlabel('Time [Days]');
ylabel('Tumor Cell Count');
title('Gompertizan Fit to Rat''s Brain Tumor Growth', 'fontsize', 12);
legend('show', 'location', 'northwest');
saveas(gcf, 'Gompertizan Fit plot.png')

%writing all the optimized values to a file
fileParams = fopen('fileWithParams.txt', 'w');
fprintf(fileParams, ['Lamda: ', num2str(optimizedParamVals(1)), ...
    ', C-Value: ', num2str(optimizedParamVals(2)), ...
    ', Sigma: ', num2str(optimizedParamVals(3))]);
fclose(fileParams);

%using a function to find the probability density function value
function output = sumLogs(params)
    global dataVals timeArray GompGrowth;
    
    %physical model
    GompGrowth = @(t, N, lamda, c) N*exp(lamda*(1-exp(-c*t)));

    %probability density model
    probDensity = @(N_Obs, sigma, GompGrowthVal) log((1/(N_Obs*sigma*sqrt(2*pi))) * ...
    exp((-(log(N_Obs) - log(GompGrowthVal))^2)/(2*sigma^2)));

    output = 0;
    for n = 1:length(dataVals)
        GompGrowthVal = GompGrowth(timeArray(n), dataVals(1), params(1), params(2));
        output = output + probDensity(dataVals(n), params(3), GompGrowthVal);
    end
    output = -1 * output;
end
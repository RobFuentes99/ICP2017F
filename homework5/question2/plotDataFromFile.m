function plotDataFromFile()
fileList = dir('*flu.txt');
for index = 1:length(fileList)
    table = readtable(fileList(index).name);
        if ~isempty(table)
            data = readtable(fileList(index).name);
            if all(data{1:height(data) - 1,1} < 0.0)
                y = data(1:height(data) - 1,1);
                x = data(1:height(data) - 1,2);
                x = exp(x);
                scatter(x, y, 0.05, [1, 0, 0]);
                hold on;
            else
                continue
            end
        else
            continue
        end
end
title('Plot of E_peak vs. Fluence for Swift GRB events');
xlabel('Fluence [ergs/cm^2]', 'fontsize', 13);
ylabel('E_peak', 'fontsize', 13);
y_label = logspace(0, 4, 5);
x_label = logspace(-8, -2, 4);
set(gca, 'yTick', y_label, 'xTick', x_label, 'YScale', 'log', 'XScale', 'log', 'linewidth', 3);
saveas(gca, 'Homework5.png');
end
fid = 'chain.txt';
data = importdata(fid);
dataNumber = 1;
xAxis = 1:100:1000000;
for i = 1:1:size(data)
    GrowthRate = data(i);
    dataNumber = dataNumber + 1;
end
plot(xAxis, GrowthRate)
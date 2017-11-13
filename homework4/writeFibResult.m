num = 1:35;
length = length(num);
for index = length:-1:1
    outputTimefib(index) = timeFib(index);
    outputTimefibloop(index) = timeFibloop(index);
    writetable(struct2table(outputTimefib), 'fibOutput.txt')
    writetable(struct2table(outputTimefibloop), 'fibloopOutput.txt')
end
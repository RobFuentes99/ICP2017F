nsample = input('input nsample: ');
UnifRand = rand(nsample,1);
h = histogram(UnifRand);
hold on
NormRand = randn(nsample,1);
n = histogram(NormRand);
hold off

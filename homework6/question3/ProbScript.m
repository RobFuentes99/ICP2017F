load('Drand.mat')
global data nsample
data = Drand;
mu = 0;
sigma = 1;
nsample = length(data);
getTotalLogProb(mu,sigma)
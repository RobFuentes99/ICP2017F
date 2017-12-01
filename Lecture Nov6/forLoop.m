n = 5e7;
X = randn(n,1);
LogicalX = zeros(size(X));
tic
LogicalX = X>0;
toc
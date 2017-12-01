[X,Y] = ndgrid(-2:0.1:2,-2:0.1:2);
Z = X .* exp(-X.^2 - Y .^2);
mesh(X,Y,Z)

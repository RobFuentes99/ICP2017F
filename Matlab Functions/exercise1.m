A = input('Enter value for first matrix:');
B = input('Enter value for second matrix');

if (size(A) == size(B))
    C = [A;B];
    disp(C);
else
    disp('These matrices are not the same size!')
end

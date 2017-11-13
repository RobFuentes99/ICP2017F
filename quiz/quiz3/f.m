function y = f()
inside = x^2 + (c * x) + 1;
a = input('Enter bottom bound of integer: ');
b = input('Enter top bound of integer: ');
c = input('Enter coefficient, c: ');
y = int(inside, a, b);
disp(y)
end

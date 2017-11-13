function z = getRoot()
a = input('Enter a-value: ');
b = input('Enter b-value: ');
c = input('Enter c-value: ');
top1 = (-b) + sqrt((b^2) - (4 * a * c)); 
top2 = (-b) - sqrt((b^2) - (4 * a * c));
bot = 2 * a;
x = (top1) / bot;
y = (top2) / bot;
disp(x)
disp(y)
end
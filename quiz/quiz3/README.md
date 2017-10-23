Quiz 3:  

1.  
The difference between * and .* is that when you use .*, it multiplies each element of the vector with its corresponding element.  When using *, it multiplies the entire vectors as a whole, getting a different (yet still correct) answer.  
For example, when a = [1,2;3,4] and b = [2,3;4,5],  a .* b = [2,6;12,20] (1*2=2, 2*3=6,...), though a * b = [11,16;19,28], a product of a form of vector multiplication.

2.  
First, define variable A & B as [1,0,3] and [2,3,7] respectively.  Next, you need to add the products of each corresponding vector, as such:  
(A(n) * B(n)) with n being the corresponding vector value.  
Ex:  
(A(1) * B(1)) + (A(2) * B(2)) + (A(3) * B(3))  
ans =  
    23  

3.  
(a)  
function y = testString(~)  
t = input('Enter a value: ');  
if t == 'Matlab'
    y = 1;  
elseif t /= 'Matlab'
    y = 0;  
end  

(b)  
The other function for determining if  a string is equal is 

4.  


5.  
If you put the b value on top of the quotien and the a on the bottom, your expression would equal zero and therefore would be less than ten, proving the total inequality expression false, resulting in x = 0.  

6.  
I believe the second form would be more efficient.  Through the second form, all you must do is name the students in one string and then state their corresponding grades in another, instead of having to painstakingly enter each students name and grade, running the operation each time. That process would end up building your grade vector one element at a time, instead of building the entire completed vector in two swift commands.  

7.  
My function:  
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

8.  
My function:  
function y = f()  
inside = x^2 + (c * x) + 1;  
a = input('Enter bottom bound of integer: ');  
b = input('Enter top bound of integer: ');  
c = input('Enter coefficient, c: ');  
y = int(inside, a, b);  
disp(y)  
end  

9.  
function y = getFac(~)  
n_int = input('Enter n-value: ');  
y = (n_int * (n_int - (n_int - 1)));   
disp(y)  
end  

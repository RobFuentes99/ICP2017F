1.
>> a = 1   

function assigns the value of 1 to variable a  

>> b = 'x'    

assigns value of 'x' to variable b  

>> c = true  

assigns value of 2 to variable c, and has status/form of logical  

>> whos a b c  

states name, size, bytes, and class of each variable  

>> a == c  

states that ans = logical and 1  

>> a + c  

states that ans = 2 (because the sum of the assigned values of a & c, 1 & 1, is 2)  

>> d = [1 2 3 4]  

assigns a 1x4 matrix of [1 2 3 4] to variable d  

>> e = ['a' 'b' 'c' 'd']  

assigns value of 'abcd' to variable e  

>> f = ['abcd']  

assigns value of 'abcd' to variable f (same as variable e)  

>> g = {‘a’ ‘b’ ‘c’ ‘d’}  

assigns 1x4 cell array, presumably of value a, b, c, and d, to variable g  

>> h = { a b c d}  

same thing as variable g, except this time indicated a "double array"  

>> whos d e f g h  

states variables, except this time the sizes and classes are significantly bigger for variables g and h  


2.  
If you input an integer larger than the limit of an int function, the number that results is always the highest capacity integer. For instance, when you input int8(1234), the largest number that will result is 127, the maximum integer.  
For a smaller integer than the limit, there is no issue, and the number comes out fine.  For instance, int8(100) = 100  

>>int8(1234)  
ans = 127  
>>int8(100)  
ans = 100  
>>int16(1000000000)  
ans = 32767  
>>int32(1000000000000)  
ans = 2147483647  

Thus, the max integer for int16 is 32767, and the max integer for int32 is 2147483647.  

3.  
>> 1\2  

prediction: I think matlab will suggest I meant to type a backslash, the true division sign.  
actual: ans = 2  
explanation: It actually divided, but backwards. Instead of the first number being divided by the second one, the opposite occurred.  

>>1/2  

p: ans = .5   
a: ans = .5  
e: Simple division  

>>int8(1/2)  

p: ans = 1    
a: ans = 1  
e: The answer is .5, but the integer function rounds it up to the closest integer, in this case 1.  

>>int8(1/3)  

p: ans = 0  
a: ans = 0  
e: The answer is .333, so the function rounds down to the closest integer, 0.  

>>-5^2  

p: ans = -25  
a: ans = -25  
e: The negative sign is outside of the exponent, and so it does not go away with squaring.  

>>(-5)^2  

p: ans = 25  
a: ans = 25  
e: The negative sign was squared since it was included in the parentheses, which makes the answer positive. 

>>10-6/2  

p: ans = 7  
a: ans = 7  
e: PEMDAS! The order of operations requires division to be committed before the subtraction.  

>>5*4/2*3  

p: ans = 30  
a: ans = 30  
e: Once again, PEMDAS.  

4.  
(a)  
>> a = [1,0;2,1]  
>> b = [-1,2;0,1]  
>> c = [3;2]  
>> d = 5  

(b)  
1.  
>> a + b  
ans =  
  
     0     2  
     2     2  

ex: Matlab added the values in each corresponding coordinate in matrices a & b.  

2.  
>> a.* b  
ans =  
  
    -1     0  
     0     1  

ex: Matlab multiplied the values in each corresponding coordinate in matrices a & b.  

3.  
>> a * b  
ans =  
  
    -1     2  
    -2     5  

ex: Matlab multiplied the entire matrices, instead of the corresponding values. This is the 'correct' multiplication of matrices mathematically.  

4.  
>> a * c  
ans =  
  
     3  
     8  

ex: Matlab multiplied the matrix a with the matrix c, resulting in a 1x2 matrix.  

5.  
>> a + c  
ans =  
  
     4     3  
     4     3  

ex: Matlab added the values of matrix c to each column of matrix a.  

6.  
>> a + d  
ans =  
  
     6     5  
     7     6  

ex: Matlab added d, valued at 5, to every value in the a matrix.  

7.  
>>  a .* d  
ans =  
  
     5     0  
    10     5  

ex: Matlab multiplied each value in the matrix by d, valued at 5.  

8.  
>> a * d  
ans =  
  
     5     0  
    10     5  

ex: Matlab multiplied each value by d, valued at 5. Though it is the same result of a .* d, both are mathematically correct.  

5.  
>> a = [2,0,0;0,2,0;0,0,2]  

or  

>> d = [2,2,2]  
>> a = diag(d)  

or  

>> a = 2 * eye(3)  

6.  
I fixed the line of code, and when I ran it the message "Persian is not the same as Spanish" was displayed. This is because I coded 'disp('Persian is not the same as Spanish') at the end of the line.  

7.  
Running the program resulted in a pop-up figure of sin(x).  

8.  
When attempting to run the 'myscript' program from the original directory, Matlab gives the error message "Undefined function or variable 'myscript'" which indicates the error of that program not existing in that directory, only in mynewdir.


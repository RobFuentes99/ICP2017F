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



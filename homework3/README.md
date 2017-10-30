1.  
%Code for Question 1 - Gaussian probability density function.  
  
%Generating input for the variables.  
mu = input('enter mu value: ');  
theta = input('enter theta value: ');  
x = input('enter x value: ');  
  
%Setting up the function using variable assignments.  
constant = 1/(sqrt(2*pi));  
intheta = (theta)^(-1);  
inside = -.5*((x - mu)/theta)^2;  
term1 = constant*intheta;  
term2 = exp(inside);  
gaussian = term1*term2;  
disp(gaussian)  
  
%Program now asks input values and then presents the answer.  

Answer generated:  
>> Q1  
enter mu value: 0  
enter theta value: 2  
enter x value: 1  
    0.1760  

This answer checks out with the normpdf function on Matlab.  

2.  
%Coding for Question 2 - the egg function.  
  
%Setting up inputs.  
Tw = input('enter water temperature: ');  
To = input('enter initial egg temperature: ');  
Ty = input('enter final achieved temperature: ');  
L = 67; %Defining mass of a large egg  
S = 47;  %Defining mass of a small egg  
M = input('is the egg large(L) or small(S): ');  
p = 1.038;  %Setting values to variables in the equation.  
C = 3.7;  
K = (5.4*10^(-3));  
inside = .76*((To - Tw)/(Ty - Tw)); %Split up the equation into easier parts.  
top = M^(2/3)*C*p^(1/3);  
bottom = K*(pi^2)*((4*pi)/3)^(2/3);  
solution = (top / bottom) * log(inside);  
disp('Time needed to cook egg in seconds: ') %Answer display  
disp(solution)  

Calculating time for a large egg from a fridge:  
enter water temperature: 100  
enter initial egg temperature: 4  
enter final achieved temperature: 70  
is the egg large(L) or small(S): L  
Time needed to cook egg in seconds:   
  396.5763  

Calculating time for a large egg from room temperature:  
enter water temperature: 100  
enter initial egg temperature: 20  
enter final achieved temperature: 70  
is the egg large(L) or small(S): L  
Time needed to cook egg in seconds:   
  315.2179  
  
3.  

4.  


5.  
%Coding for Question 5 - Fibonacci's number  
  
function y = getFib(n_int) %set function as equal to a variable, y  
if (n_int) < 0  
    disp('This number is not a non-negative integer') %Fibonacci's number starts at 0.  
elseif (n_int) == 0  
    y = 0; %first value is 0  
elseif (n_int) == 1  
    y = 1; %second value is 1  
elseif (n_int) > 1  
    y = getFib((n_int) - 1) + getFib((n_int) - 2); %after 0 & 1, Fibonacci's number follows this pattern.  
elseif (n_int) == ischar  
    disp('This is not a non-negative integer') %preventing inputs from being non-numerical  
end  
end  
  

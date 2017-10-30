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
  
%Program now asks input values and then presents the answer.  swi

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
Function for generating Polar coordinates given Cartesian coordinate:  
  
function polar = getPolar(cart)  
if(isfield(cart, 'x') == 1 && isfield(cart, 'y') == 1)  
    polar.r = sqrt(cart.x^2 + cart.y^2);  
    polar.phi = atan(cart.y / cart.x);  
else  
    polar.r = 0;  
    polar.phi = 0;  
    disp('Input is not valid, please input a value with an x and y field.')  
end  
end  

Function for generating Cartesian coordinate given Polar coordinate:  
function cart = getCart(polar)  
if(isfield(polar, 'r') == 1 && isfield(polar, 'phi') == 1)  
    cart.x = (polar.r)*cos(polar.phi);  
    cart.y = (polar.r)*sin(polar.phi);  
else  
    cart.x = 0;  
    cart.y = 0;  
    disp('Input is not valid, please input a value with an r and phi field.')  
end  
end  
  
4.  
Function determining size of directory:
function b = getSize(path)  
x = dir(path);  %which path is being accessed
b = sum([x.bytes]);  
end  

5.  
Function for determining Fibonacci's number for a value: 
 
function Fib  
in = input('Please enter a non-negative integer or type stop: ', 's');  
if(strcmp(in, 'stop') == 1)  
    return  
else  
    number = str2double(in);  
    if(number == round(number) && number >= 0)  
        disp(getFib(number));  
        Fib;  
    else  
        disp('The input argument is not a non-negative integer!');  
        Fib;  
    end  
end  
function y = getFib(n_int) 
if (n_int) < 0  
    disp('This number is not a non-negative integer') %Fibonacci's number starts at 0.  
elseif (n_int) == 0  
    y = 0;   
elseif (n_int) == 1  
    y = 1;   
elseif (n_int) > 1  
    y = getFib((n_int) - 1) + getFib((n_int) - 2);   
end  

6. 
Function that calculates Area of triangle given vertices (x1, x2, x3, y1, y2, y3):  

function area = getTriangleArea(vertices)  
    term1 = vertices(2)*vertices(6);  
    term2 = vertices(3)*vertices(5);  
    term3 = vertices(1)*vertices(6);  
    term4 = vertices(3)*vertices(4);  
    term5 = vertices(1)*vertices(5);  
    term6 = vertices(2)*vertices(4);  
    area = 0.5*abs(term1-term2-term3+term4+term5-term6);  
end   

7.  
Function to determine if input argument is prime: 

function [ Status ] = isPrime(varargin)  
switch nargin  
    case 1  
        isPrime(varargin{1},2)  
    case 2  
        if varargin{1}==2||mod(varargin{1},varargin{2})~=0&&varargin{1}- 1  
            if varargin{2} < sqrt(varargin{1})  
                isPrime(varargin{1},varargin{2}+1)  
            else   
                Status=true;  
            end  
        else  
            Status=false;  
        end  
end  
end  
  
8.  
Function generator:  

function output = genFunc(varargin)  
    if(nargin>3)  
        disp('You can only display 3 inputs!');  
        return  
    else  
        switch nargin  
            case 1  
                if(isreal(varargin{1}))  
                    a = varargin{1};  
                    b = 0;  
                    c = 0;  
                else  
                    disp('You must enter real numbers');  
                end  
            case 2  
                if(isreal(varargin{1}) && isreal(varargin{2}))  
                    a = varargin{1};  
                    b = varargin{2};  
                    c = 0;  
                else  
                    disp('You must enter real numbers')  
                end  
            case 3   
                if(isreal(varargin{1}) && isreal(varargin{2}) && isreal(varargin{3}))  
                    a = varargin{1};  
                    b = varargin{2};  
                    c = varargin{3};  
                else  
                    disp('You must enter real numbers')  
                end  
        end  
    end  
    output = evaluateFunction(a,b,c);  
end  
function out = evaluateFunction(a,b,c)  
out = @(x) a.*x^2+b.x+c;  
end  

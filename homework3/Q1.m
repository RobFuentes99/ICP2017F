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
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
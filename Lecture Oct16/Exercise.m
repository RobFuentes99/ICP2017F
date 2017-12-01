function [xminus, xplus] = Exercise (a,b,c)
temp = sqrt(b^2 - 4*a*c);
xminus = (-b - temp)/(2*a);
xplus = (-b + temp)/(2*a);
end

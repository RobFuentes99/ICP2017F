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
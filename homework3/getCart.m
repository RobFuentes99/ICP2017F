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
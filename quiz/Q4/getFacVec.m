function Fac = getFacVec(n)
if n ==0
    Fac = 1;
elseif n >= 1
    nVec = writevector(n-1);
    Fac = prod(nVec);
end
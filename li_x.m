%Integral logarítmica
function li_x=li_x(x)
z=chebfun('z',[2 x]);
f=1./log(z);
li_x=sum(f)+1.0451;
end


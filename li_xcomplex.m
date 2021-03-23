function y=li_xcomplex(x,r) %r=roots
%Integral logaritmica compleja
f = @(z) exp(z)./z;
s = chebfun('s',[0 1]);                 % dummy variable
c =[-1e5+log(x)*imag(r)*1i log(x)*r];
z = chebfun(c(1)+s*(c(2)-c(1)));
y = sum(f(z)*diff(z));
end


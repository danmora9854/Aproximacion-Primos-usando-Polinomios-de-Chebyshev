function I=integral_1(xhat) %x^(1/N)>2
x=chebfun('x',[2 xhat]);
f=1./((x.^2-1).*x.*log(x));
I=0.14001-sum(f); %0.14001=\int_{2}^{Inft}1/((x^2-1)xlogx)dx, 
%I=\int_{xhat}^{Inft}1/((x^2-1)xlogx)dx
end


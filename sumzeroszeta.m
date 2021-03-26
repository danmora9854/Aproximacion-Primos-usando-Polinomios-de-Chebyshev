function S=sumzeroszeta(xhat,domM) %Problema: Se buscan los ceros para cada punto que se corre, la posibles solución es crear un vector con los ceros inicialmente y que trabaje solo con eso
    s = chebfun(@(t) .5+1i*t,[5 domM]);
    f = chebfun(@(t) zeta(s(t)),[5 domM]);
    zeros_t_1 = roots(f,'complex','norecursion');% MS = 'markersize';
    zeros_t_2=0.5+sqrt(-1)*zeros_t_1;
    zeros_t=[];
        for k=1:size(zeros_t_2)
            zeros_t=[zeros_t ;zeros_t_2(k); 1-zeros_t_2(k)];
end
b=[];
for k=1:size(zeros_t)
    b(k)=li_xcomplex(xhat,zeros_t(k)); 
end
S=sum(b);
end

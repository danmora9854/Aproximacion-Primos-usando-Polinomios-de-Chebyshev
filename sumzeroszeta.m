function S=sumzeroszeta(xhat,domM,zeros_t) 
 zeros_t=zeros_t(zeros_t<domM);
b=[];
for k=1:size(zeros_t)
    b(k)=li_xcomplex(xhat,zeros_t(k)); 
end
S=sum(b);
end

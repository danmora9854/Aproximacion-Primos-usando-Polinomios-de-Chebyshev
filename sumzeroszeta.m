function S=sumzeroszeta(xhat,domM) 
 
b=[];
for k=1:size(zeros_t)
    b(k)=li_xcomplex(xhat,zeros_t(k)); 
end
S=sum(b);
end

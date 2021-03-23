
val = 10000;
w=linspace(1,val,val);
r=linspace(3,val,val);
result_contadora=[];
y=[];
z=[];
for i=1:size(w,2)    
        result_contadora = contadoraPrimos(w(i));
        y(i)=w(i)./log(w(i));
end
for i=1:size(r,2)
    z(i)=li_x(r(i));
end
plot(w,result_contadora, 'linewidth',1,'color', 'b')
hold on
plot(w,y,'linewidth',1,'color','r')
hold on
plot(w,z,'linewidth',1,'color','g')
legend('\pi(x)','x/log(x)','Li(x)')
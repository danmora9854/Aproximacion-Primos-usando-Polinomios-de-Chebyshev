domM=50;
val = 500;
w=linspace(1,val,val);
% result_aprox = [];
result_contadora=[];
% diferencia = [];
zeros_t=zerost(domM);
for i=1:size(w,2)    
%     aproximacion = myR_x(w(i));
%     result_aprox = [result_aprox aproximacion];
    result_contadora = contadoraPrimos(w(i));
%     diferencia = [diferencia abs(result_aprox(i)-result_contadora(i))];
end
z=linspace(3,val,3*val);
result_aprox_2=[];
% diferencia_2=[];
for i=1:size(z,2)
    aproximacion_2=P_x(z(i),domM,zeros_t);
    result_aprox_2=[result_aprox_2 aproximacion_2];
end
figure(1)
% plot(w,result_aprox,'linewidth',1,'color','r');
% hold on 
plot(w,result_contadora,'linewidth',1,'color','b');
hold on
plot(z,result_aprox_2,'linewidth',1,'color','r');
legend('\pi(x)','\pi_{50}(x)')
% figure(2)
% plot(w,diferencia,'linewidth',1,'color','g');
% legend('Error')

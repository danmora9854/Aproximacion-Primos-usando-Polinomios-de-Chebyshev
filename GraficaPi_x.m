val=500;
w=linspace(1,val,val);
result_contadora=[];
% result_lix=[];
for i=1:size(w,2)
    result_contadora=contadoraPrimos(w(i));
%     result_lix=[result_lix li_x(w(i))];
end
plot(w,result_contadora,'linewidth',1,'color','b')
% hold on
% plot(w,result_lix,'linewidth',1,'color','r')
legend('\pi(x)')
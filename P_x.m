function P=P_x(x,domM)
N=ceil(log(x)/log(2)-1);
b=nan(1,N);
for k=1:N
    b(k)=real(myJ_x(x^(1./k),domM).*moebiusmu(k)./k);
end
P=sum(b);
end


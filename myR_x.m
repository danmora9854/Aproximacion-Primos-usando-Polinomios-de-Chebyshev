
function R = myR_x(x)
N = ceil(log(x)/log(2)-1);
b = nan(1,N);
for k=1:N
    b(k)=li_x(x^(1./k)).*moebiusmu(k)./k;
end
R=sum(b);
end







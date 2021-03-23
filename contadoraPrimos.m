function r = contadoraPrimos(val)
p = primes(val);
y = nan(val,1);
for j = 1:val% dominio j\in \lbrace 1,2,3,...Imax\rbrace
    y(j) = sum(p<=j);
end
r = y;
end
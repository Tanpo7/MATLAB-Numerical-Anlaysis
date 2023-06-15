clear all
clc
x = input('')
y = input('')
syms z;
n = length(x);
p = 0;
for k = 1:n
    L = 1;
    for i = 1:n
        if i~=k
        L = L*((z - x(i))/(x(k)-x(i)));
        end
    end
    p = p+L*y(k);
end
p = simplify(p)
p
p1 = inline(p,'z')
x0 = input('')
p0 = p1(x0);
p0


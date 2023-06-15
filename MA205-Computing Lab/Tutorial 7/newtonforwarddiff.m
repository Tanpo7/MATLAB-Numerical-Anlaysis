clear all
clc
X = input('');
fx = input('');
n = length(X);
for i = 1:n
    F(i,1) = fx(i);
end

for j = 2:n
    for i = j:n
        F(i,j) = (F(i,j-1)-F(i-1,j-1))/(X(i)-X(i-j+1));
    end
end

f = [X F];
f
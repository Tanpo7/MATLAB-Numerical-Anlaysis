clear all
clc
n = input('enter the number of interval = ')
syms x
f = input('enter the function = ')
a = input('enter the left point of the interval = ')
b = input('enter the right point of the interval = ')
h = (b-a)/n; 
x = [a:h:b];
X = subs(f,x) 
m=length(X);
I=0; 
m2 = m/2;
for k = 1:m2
    I = I+(4/3)*h*X(2*k);
end
for k = 1:m2-1
    I = I+(2/3)*h*X(2*k+1);
end
I = I+h/3*(X(1)+X(m));
I;
disp(I);
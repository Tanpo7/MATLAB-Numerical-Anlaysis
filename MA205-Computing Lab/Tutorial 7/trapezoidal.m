n = input('enter the number of interval = ');
syms x
f = input('enter the function = ')
a = input('enter the left point of the interval = ')
b = input('enter the right point of the interval = ')
h = (b-a)/n; 
x = [a:h:b];
X = subs(f,x) 
m=length(X);
I=0;  
for k = 2:m-1   
    I = I+h*X(k) ;
end
I= I + (h/2)* (X(1) + X(m));
 fprintf('The approximate value of the integral using Simpsons 1/3 rule is %f',I)
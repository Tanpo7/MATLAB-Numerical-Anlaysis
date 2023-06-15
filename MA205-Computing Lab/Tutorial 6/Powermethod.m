clear all
clc
A = input('Enter the matrix');
X0 = input('Enter the initial guess');
tol = 10^(-111);
m = length(X0);
dd = 1;
X = X0;
count = 0;
while(dd>tol)
    Y = A*X;
    n = norm(Y,"inf");
    Y = Y/n;
    dd = abs(norm(Y,2)-norm(X,2));
    X = Y;
end
vecA = Y;
eig = n;
disp(n);
vecA;

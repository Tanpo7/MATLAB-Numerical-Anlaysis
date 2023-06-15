%jacobi iteration
clear all
clc
A = input('Enter the matrix');
b = input('Enter the coeff matrix');
[m,n] = size(A);

for i = 1:n
    s = sum(abs(A(i,:)))-abs(A(i,i));
    %disp(s);
    if abs(A(i,i))<s
        fprintf("Not Diagonally Dominant");
        return
    end
end
D = zeros(size(A));
R = zeros(size(A));
for i = 1:n
    for j = 1:n
        if i == j
            D(i,j) = A(i,j);
        else
            R(i,j) = A(i,j);
        end
    end
end

x = input('Initial Approximation');

k = 0;
E = b-A*x;
r = 0;
G = b-A*x;
nm1 = norm(G,Inf);
nm = norm(E,Inf);
disp(nm);
while nm>10^(-6)
    k = k+1;
    X = inv(D)*(b-R*x);
    E = b-A*X;
    nm = norm(E,Inf);
    x = X;
end


disp(k);



%[4,-1,0,0;-1,4,-1,0;0,-1,4,-1;0,0,-1,4]
%[1;1;1;1]






D
R



        
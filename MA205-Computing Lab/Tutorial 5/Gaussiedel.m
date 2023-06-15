%Gauss-Siedel iteration
A = input('Enter the matrix');
b = input('Enter the coeff matrix');
[m,n] = size(A);
A
b
for i = 1:n
    s = sum(abs(A(i,:)))-abs(A(i,i));
    %disp(s);
    if abs(A(i,i))<s
        fprintf("Not Diagonally Dominant");
        return
    end
end
D = zeros(size(A));
L = zeros(size(A));
U = zeros(size(A));
for i = 1:n
    for j = 1:n
        if i == j
            D(i,j) = A(i,j);
        elseif i<j
            U(i,j) = A(i,j);
        else
            L(i,j) = A(i,j);

        end
    end
end
L
U
D
x = input('Initial Approximation');

k = 0;
E = b-A*x;
E
nm = norm(E,Inf);
disp(nm);
while nm>10^(-6)
    k = k+1;
    X = inv(D+L)*(b-U*x);
    x = X;
    E = b-A*x;
    nm = norm(E,Inf);
    
end
X
disp(k);



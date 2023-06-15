A = input('Enter the coefficient matrix ');
b = input('Enter the constants matrix ');
C = [A b];
[m,n]=size(A);
if m==n
    fprintf('Proceeding with the operation');
else
    fprint('Not possible')
end

if det(A)==0
    fprintf('Not possible')
end
flag = 0;
for i = 1:n-1
    for j = i+1:n
        mulitplier = C(j,i)/C(i,i);
        C(j,:) = C(j,:)-mulitplier*C(i,:);
    end
end
C
x = zeros(n,1);
x(n) = C(n,n+1)/C(n,n);
for k = n-1:-1:1
    sum = 0;
    for j = (k+1):n
        sum = sum+C(k,j)*x(j);
    end
    x(k) = (C(k,n+1)-sum)/C(k,k);
end
x
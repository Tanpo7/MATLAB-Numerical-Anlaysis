 A = input('Enter the matrix A \n')
 [row,col]= size(A);
%% Is A square
if (row ~= col) 
  fprintf('Sorry - the matrix A must be square');
  return;
end
U = A;
L = eye(row);
P = eye(row);
for i=1:col-1
            %Pivoting
            [dummy,pos]=max(abs(U((i:row),i)));
            if dummy ~=0
             pos=pos+i-1;
             U([pos,i],:) = U([i,pos],:)
             P([pos,i],:) = P([i,pos],:)
             temp = L(i,1:i-1);
             L(i,1:i-1) = L(pos,1:i-1);
             L(pos,1:i-1) = temp;
            else
            break    
            end
    for j=i+1:row
        L(j,i)=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-L(j,i)*U(i,:);
    end
end

X = P*A;
Y = L*U;
X,Y
L
U


b= input('Enter the vector b');
[n,n] = size(A);
y = zeros(length(b),1);
b=P*b;
y(1)=b(1)/L(1,1);
for i = 2:n
    sum=0;
    for j = 1:i-1
        sum=sum+(L(i,j)*y(j));
    end
    y(i)=(b(i)-sum)/L(i,i) ;
end
% Solving Ux=y by backward substitution
x = zeros(length(b),1);
x(n)=y(n)/U(n,n);

for i =n-1:-1:1
    sum=0;
    for j = i+1:n
        sum=sum+(U(i,j)*x(j));
    end
    x(i)=(y(i)-sum)/U(i,i) ;
end
x
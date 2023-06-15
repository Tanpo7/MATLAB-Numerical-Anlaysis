A = input("Enter the matrix A: ");
B = input("Enter the column matrix B: ");
[row,col] = size(A);
for i = 1:row 
    for j = i+1:row
        if abs(A(j,i)) > abs(A(i,i))
            A([i,j],:) = A([j,i],:);
            B([i,j],:) = B([j,i],:);
        end
    end
        for j = i+1:row
        B(j,:) = (B(j,:)/A(j,i))*A(i,i);
        B(j,:) = B(j,:) - B(i,:);
        A(j,:) = (A(j,:)/A(j,i))*A(i,i);
        A(j,:) = A(j,:) - A(i,:);
        end
end
i = row - 1;
B(row,1) = B(row,1) / A(row,row);
while(i>0)
    x=0;
    for j = i+1:row
         x = x + A(i,j)*(B(j,1));
    end
     B(i,1) = B(i,1) - x;
     B(i,:) = B(i,:) / A(i,i);
    i=i-1;
end
display(B);
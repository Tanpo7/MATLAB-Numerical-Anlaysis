A = input('Enter the symmetric matrix');
maxiter = 5;
n = length(A);
iter = 1;
B = A;
S = eye(n);
while iter<maxiter
    i = 1;
    j = 2;
    max = abs(B(1,2));
    for p = 1:n
        for q = 1:n
            if p~=q
                if max<abs(B(p,q))
                    max = abs(B(p,q));
                    i = p;
                    j = q;
                end
            end
        end
    end
if B(i,i)~=B(j,j)
    theta = 0.5*atan(2*B(i,j)/(B(i,i)-B(j,j)));
elseif B(i,j)<0
    theta = -pi/4;
else
    theta = pi/4;
end
S1 = eye(n);
S1(i,i) = cos(theta);
S1(j,j) = cos(theta);
S1(i,j) = -sin(theta);
S1(j,i) = sin(theta);
B = inv(S1)*B*S1;
S = S*S1;
iter = iter+1;
end
B
S    
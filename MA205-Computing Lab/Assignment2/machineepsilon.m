eps = 1;
t = 1+eps;
count = 0;
while(t>1)
    eps = eps/10;
    t = 1+eps;
    count = count+1;
end
eps
count
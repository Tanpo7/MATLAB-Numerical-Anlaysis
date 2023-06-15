f = @(x)(3*x^3+10*x^2+10*x+7);
a = -3;
b = -2;
c = (a+b)/2;
n = 5;
A = zeros(n,4);
i = 0;
err = abs(f(c));
while err>10^-5
    i=i+1;
    A(i,1) = i;
    A(i,2) = a;
    A(i,3) = b;
    %c = (a+b)/2;
    A(i,4) = c;

    if(f(a)*f(c)<0)
        b = c;
    else
        a = c;
    end
    c = (a+b)/2;
    err = abs(f(c));
end
disp(i)
iter = A(:,1);
    a1 = A(:,2);
    b1 = A(:,3);
    c1 = A(:,4);
    table(iter,a1,b1,c1)
    fprintf('The approximate root is %f\n',c)


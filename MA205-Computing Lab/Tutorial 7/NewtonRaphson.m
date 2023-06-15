f = @(x)(x^2-1);
p0 = input('Enter the initial Approximation');
tol = input('Enter the tolerance');
g = @(x)(2*x);
disp(g);
err = 1;
count = 0;

while err>tol
    count = count+1;
    p = p0 - f(p0)/g(p0);
    err = abs(p-p0);
    p0 = p;
end
disp(p0)
disp(count);
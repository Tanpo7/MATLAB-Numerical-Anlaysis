clc
clear all
close all
x=[0.5 1.5 3.0 5.0 6.5 8.0]; % input the value of x
fx=[1.625 5.875 31.00 131.00 282.125 521.000]; % input the value of function at that point
n=length(x);
for i=1:n
    F(i,1)=fx(i);
end
for j=2:n
    for i=j:n
        F(i,j)=(F(i,j-1)-F(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
% creating Newton Forward Difference table
Newton_Forward_Difference_Table=[x' F] 
% calling the function
x0=input('Input the point to evaluate the interpolating polynomial')
y=NewtonDD_Polynoimal(7,x,fx,F) 
%Function to evaluate polynomial using Newton's Divided Diference Method
    function Result=NewtonDD_Polynoimal(x_val,x,fx,F)
    n=length(x);
        sum=0;
        for l=1:n
            px=1;
            Product=1;
            for m=1:l-1
                Product=Product*(x_val-x(m));
            end
            for m=1:n
                if(l==m)
                    px=Product*F(l,m);
                end
            end
            sum=sum+px;
        end
        Result=sum;
    end
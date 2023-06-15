x = input('');
t = [];
while(x>=2)
    quo = floor(x/2);
    t = [t,rem(x,2)];
    x = quo;
end
t = [t,x];
t = flip(t);







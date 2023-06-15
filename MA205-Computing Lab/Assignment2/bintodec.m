num=input('Enter a binary number');
ans=0;
count=0;
while(num>=1)
    r=rem(num,10);
    ans=ans+r*(2^count);
    count=count+1;
    num=floor(num/10);
end
ans
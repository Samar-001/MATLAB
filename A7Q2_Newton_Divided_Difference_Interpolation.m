clc
clear all

x=[1 1.5 2 2.5];
f=[2.7183 4.4817 7.3891 12.1825];
g=@(x) exp(x);
p=2.25;
n=4;

for i=1:n
    F(i,1)=f(i);
end
for i=2:n
    for j=i:n
        F(j,i)=(F(j,i-1)-F(j-1,i-1))/(x(j)-x(j-i+1));
    end
end

for i=1:n
    Pr(i)=1;
    for j=1:i-1
        Pr(i)=(Pr(i))*(p-x(j));
    end
end

sum=0;
for i=1:n
    sum=sum+((F(i,i))*Pr(i));
end
sum
err=abs(g(p)-sum);
err
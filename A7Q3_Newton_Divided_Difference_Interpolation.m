clc
clear all

x=[1 0.25 0.5 0.75];
f=[1 1.64872 2.71828 4.4816];
g=@(x) exp(x);
p=0.43;
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
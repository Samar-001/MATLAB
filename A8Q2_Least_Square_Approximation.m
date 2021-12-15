clc
clear all

x=[-2 -1 0 1 2];
y=[15 1 1 3 19];

n=length(x);
a=[n sum(x);sum(x) sum(x.*x)]
b=[sum(y);sum(x.*y)]

X=(inv(a)*b)

f=X(1)+X(2)*x;
plot(f,x)

p=[n sum(x) sum(x.*x);sum(x) sum(x.*x) sum(x.^3);sum(x.^2) sum(x.^3) sum(x.^4)];
q=[sum(y);sum(x.*y);sum(x.*x.*y)]
R=(inv(p)*q);

f1=R(1)+R(2)*x+R(3)*(x.^2);
hold on;
plot(f1,x)
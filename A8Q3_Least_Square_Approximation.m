clc
clear all

x1=[2 3 4 5 ]
y1=[27.8 62.1 110 161]
x=log(x1)
y=log(y1)
n=length(x)

A=[n sum(x) ; sum(x) sum(x.*x)]
B =[sum(y); sum(x.*y)]

X=inv(A)*B

f=X(1)+X(2)*x
plot(f,x)
a=exp(X(1))
b=X(2)
g=a.*(x.^b)
hold on
plot(g,x)
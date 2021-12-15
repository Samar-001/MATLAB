clc
clear all
A = [4,1,0;1,20,1;0,1,4];
X = [1;1;1];
tol = 10^(-3);
N=50;
x=X;
K(1)=0;
for i=2:N
    y=A*x;
    K(i)=norm(y,inf);
    x=(1/K(i))*y;
    if(abs(K(i)-K(i-1))<tol)
        K(i)
        break
    end
end
x
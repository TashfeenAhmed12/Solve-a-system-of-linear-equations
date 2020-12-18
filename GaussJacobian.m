clear;
close;
clc;
format long
a=[-5,2,-5;2,-2,-1;2,0,5]; %coeffiecient matrix
[m,n]=size(a);
b=[-9;-10;9]; %result matrix
x= zeros(101,m+1);

for k=1:100
    for i=1:n
        x(k+1,i)=(b(i) - a(i,1:n)*x(k,1:n)' +a(i,i)*x(k,i))/a(i,i);
    end
    x(k,n+1)=max(abs(x(k+1,1:n)-x(k,1:n)));
end
disp(x);
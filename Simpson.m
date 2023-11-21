clc
clear all;
f = @(x) 1/(1+x);
a = 1;
b = 2;
n = 20;
h = (b-a)/n;
sum = (h/3)*f(a);
for i = 1 : n-1
    k = a + i*h;
    if( rem(i,2) == 1)
        sum = sum + (4/3)*h*f(k);
    else
        sum = sum + (2/3)*h*f(k);
    end
end
sum = sum + (h/3)*f(b);
fprintf('Value of given function 1/(1+x) from %d to %d is %f',a,b,sum);
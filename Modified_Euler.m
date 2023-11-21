clc
clear all;
f = @(t,y) t*y;
t0 = 1;
t = 1.3;
y0 = 5;
h = 0.1;
n = (t-t0)/h;
for i = 1 : n
    k1 = h*f(t0,y0);
    t1 = t0 + h;
    k2 = h*f(t1,y0+k1);
    y1 = y0 + (1/2)*(k1 + k2);
    y0 = y1;
    t0 = t1;
end
fprintf('Value of y at %f is %f',t,y1);
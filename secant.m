clc;
clear all;
f=@(x) x^2 - 29;
x0=input('Enter first guess : ');
x1=input('Enter second guess : ');
n=input('Enter iterations : ');
e=input('Enter tolerance : ');

for i=1:n
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    fprintf('x%d = %.4f \n', i, x2);
    if abs(x2-x1)<e
        break;
    end
    x0=x1;
    x1=x2;
    if f(x1)-f(x0)==0
        fprintf('Secant failed.');
    end
end
fprintf('\nRoot is %.4f', x1)
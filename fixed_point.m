clc;
clear all;
g=@(x) (2^x+2)/5;
x0=0;
tol=0.0001;
n=input('Number of iteration : ');
for i=1:n
    x1=g(x0);
    fprintf('x%d = %.4f \n', i,x1)
    if (abs(x1-x0)<tol)
        break;
    end
    x0=x1;
end
fprintf('The root is %.4f', x1)

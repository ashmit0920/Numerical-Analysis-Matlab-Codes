%{
xin = (1/aii)/(ai,n+1 - sumj=1 to i-1 (aij * xjo) - sumj=1+1 to h (aij*xjo)
10x1 - x2 + 2x3 = 6
%}
clc
clear all;
a = [10,-1,2,0,6;-1,11,-1,3,25;2,-1,10,-1,-11;0,3,-1,8,15];
x0 = [0 0 0 0];
x = [0 0 0 0];
n = size(a,1);
iter = 1;
while(iter <= 100)
    for i = 1 : n
        sum = 0;
        for j = i : n
            if (i~=j)
                sum = sum + (a(i,j)*x(j));
            end
        end
        x(i) = (1/a(i,i))*(a(i,n+1) - sum);
    end
    if(abs(x - x0) < 0.0001)
        break;
    end
    x0 = x;
    iter = iter + 1;
end
fprintf('The roots are: \n');
x
fprintf('Iterations are %d',iter);
clc
clear all;
x = [2 3 4 5 6];
y = [4 7 8 11 15];
p = 4.5;
n = length(x);
a = zeros(n,n);         % to make all elements zero
a(:,1) = y';           % to copy y in first column
for j = 2 : n
    for i = j : n
        a(i,j) = (a(i,j-1) - a(i-1,j-1))/(x(i) - x(i-j+1));
    end
end
P(1) = 1;
sum = a(1,1);
for i = 2 : n
    P(i) = P(i-1) * (p - x(i-1));
    sum = sum + (a(i,i) * P(i));
end
fprintf('Value at point %f is %f',p,sum);
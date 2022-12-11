% Newton cotes Integration
% made by Amirhossein Chami
close;
clear all;
clc;
syms x;
f(x) = input('Enter the function : ');
a = input('Enter the lower bound of the integral : ');
b = input('Enter the upper bound of the integral : ');
n =input('Enter the number of points : ');
h = (b-a)/n;
sum = (f(a)+f(b));
for i = 1:n-1
    sum = sum + 3*f(a+i*h);
end
N = ((3*h)/8)*(sum);
fprintf('The integral of the function the given interval : %f\n',N);
disp('Finish.');

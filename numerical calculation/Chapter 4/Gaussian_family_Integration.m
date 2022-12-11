% Gaussian Integration
% Amirhossein Chami
close;
clear all;
clc;
syms x ;
syms u ;
f(x) = input('Enter the function : ');
a = input('Enter the lower bound of the integral : ');
b = input('Enter the upper bound of the integral : ');
g = input('Which gauss point formula do you want ? ');
F(u) = f(((b-a)*u + (b+a))/2);
if g==2
    w1 = 1;
    w2 = 1;
    x1 = 1/sqrt(3); x3 = -1/sqrt(3);
    G2 = ((b-a)/2)*(w1*F(x1) + w2*F(x2));
    fprintf('Resault using 2-point formula is : %f\n',G2);
elseif g==3
    w1 = 5/9; w2 = 8/9; w3 = 5/9;
    x1 = sqrt(3/5); x2 = 0; x3 = -sqrt(3/5);
    G3 = ((b-a)/2)*(w1*F(x1) + w2*F(x2) + w3*F(x3));
    fprintf('Resault using 3-point formula is : %f\n',G3);
else
    disp('Formula is not available.\n');
    return;
end


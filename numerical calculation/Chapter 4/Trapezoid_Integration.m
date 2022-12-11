% Trapezoid Integration
% Amirhossein Chami
close;
clear all;
clc;
t = input(['choose the type of function : \n' ...
    '1) polynomial function \n' ...
    '2) Tabular function \n']);
switch t
    case 1
        fprintf('You have selected the polynomial function.\n');
        syms x;
        f(x) = input('Enter your function : ');
        a = input('Enter the lower bound of the integral : ');
        b = input('Enter the upper bound of the integral : ');
        h = input('Enter the step : ');
        n = ((f(b)-f(a))/h)+1;
        T = 0.5*(f(a)+f(b));
        for i = 1:n
            T = T + f(a+i*h);
        end
        T = h*T;
        fprintf('The integral of the function in the given interval: %f',T);
    case 2
        fprintf('You have selected the tabular function.\n');
        x = input('Enter list of abscissas : ');
        y = input('Enter list of ordinates : ');
        a = input('Enter the lower bound of the integral : ');
        b = input('Enter the upper bound of the integral : ');
        h = x(2)-x(1);
        m = length(x);
        n = ((x(m)-x(1))/h)+1;
        T = 0.5*(y(1)+y(n));
        for i = 2:n-1
            T = T + y(i);
        end
        T = h*T;
        fprintf('The integral of the function in the given interval: %f',T);
    otherwise
        disp('choose between the given options!');
        return;
end


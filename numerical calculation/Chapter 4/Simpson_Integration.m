% Simpson's Integration
% Amirhossein Chami
close; 
clear all;
clc;
t = input(['choose the typpe of function : \n' ...
    '1) polynomial function \n' ...
    '2) Tabular function \n']);
switch t
    case 1
        syms x;
        f(x) = input('Enter function : ');
        a = input('Enter the lower bound of the integral : ');
        b = input('Enter the upper bound of the integral : ');
        h = input('Enter the step : ');
        n = ((f(b)-f(a))/h)+1;
        sum = (f(a)+f(b));
        for i = 2:2:n-2
            sum = sum + 2*f(a+i*h);
        end
        for i = 1:2:n-1
            sum = sum + 4*f(a+i*h);
        end
        S = (h/3)*sum;
        fprintf('The integral of the function at the given interval: %f\n',S);
    case 2
        x = input('Enter list of abscissas : ');
        y = input('Enter list of ordinates : ');
        a = input('Enter the lower bound of the integral : ');
        b = input('Enter the upper bound of the integral : ');
        h = x(2)-x(1);
        m = length(x);
        n = ((x(m)-x(1))/h)+1;
        sum = 0;
        for i = 2:2:n-2
            sum = sum + 2*y(i);
        end
        for i = 3:2:n-1
            sum = sum + 4*y(i);
        end
        S = (h/3)*(y(1) + sum + y(n));
        fprintf('The integral of the function at the given interval: %f\n',S);
    otherwise
        disp('choose between the given options!\n');
        return;
end
disp('Finish.');
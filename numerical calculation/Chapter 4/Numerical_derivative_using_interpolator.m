% Numerical derivative using polynomial interpolator
% made by Amirhossein Chami
close;
clear all;
clc;
t = input(['choose the typpe of function : \n' ...
    '1) polynomial function \n' ...
    '2) Tabular function \n']);
switch t
    case 1
        f = input('Enter your function : ','s');
        f = str2func(f);
        h = input('Enter step size : ');
        d = input('Which derivative you want to compute : ');
        x = input('At which point you want to approximate derivative : ');
        if d == 1
            fd2 = (f(x+h)-f(x))/h;
            bd2 = (f(x)-f(x-h))/h;
            cd2 = (f(x+h)-f(x-h))/(2*h);
            fd3 = (4*f(x+h)-f(x+2*h)-3*f(x))/(2*h);
            bd3 = (-4*f(x-h)-f(x-2*h)+3*f(x))/(2*h);
            disp('Resault using 2-point formulas :\n');
            fprintf('Forward : %f\n',fd2);
            fprintf('Backward : %f\n',bd2);
            fprintf('Central : %f\n',cd2);
            disp('Resault using 3-point formulas :\n');
            fprintf('Forward : %f\n',fd3);
            fprintf('Backward : %f\n',bd3);
        elseif d == 2
            fd3 = (f(x+2*h)-2*f(x+h)+f(x))/(h^2);
            bd3 = (f(x-2*h)-2*f(x+h)+f(x))/(h^2);
            cd3 = (f(x+h)-2*f(x)+f(x-h))/(h^2);
            disp('Resault using 3-point formulas :\n');
            fprintf('Forward : %f\n',fd3);
            fprintf('Backward : %f\n',bd3);
            fprintf('Central : %f\n',cd3);
        else
            disp('sorry, formula not available');
            return;
        end
    case 2
        x = input('Enter list of abscissas : \n');
        y = input('Enter list of ordinates : \n');
        h = input('Enter step size : ');
        if length(x) ~= length(y)
            disp('The number of x and y is not equal!');
            return;
        end
        xp = input('Enter the desired point for derivative (between abscissas) : ');
        n = length(x);
        for i = 1:n
            if xp==x(i)
                break;
            end
        end
        for j = 1:n-1
            b = x(j+1) - x(j)
            if b~=h
                disp('Bad intervals : The intervals between the input values ​​are not equal');
                return;
            end
        end
        d = input('Which derivative you want to compute : ');
        if d==1
            if xp==0
                k = (y(2)-y(1))/h;
            elseif xp==x(n)
                k = (y(n+1)-y(n))/h;
            else
                k = (y(i+1)-y(i))/h;
            end
            fprintf(' f''(%f) = %f\n',xp,k);
        elseif d==2
            if i~=1 && i~=n
                k = (y(i+2)-2*y(i+1)+y(i))/(h^2);
            else
                disp('cannot calculate!');
                return;
            end
            fprintf(' f''''(%f) = %f\n',xp,k);
        else
            disp('formula is not availabe!');
            return;
        end
    otherwise
        disp('choose between the given options');
        return;
end
disp('Finish.');

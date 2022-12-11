% Secant Method
% Amirhossein Chami
close;
clear all;
clc;
syms x;
f(x) = input('f(x)=');
a = input('Enter x0=');
b = input('Enter x1=');
d = input('enter  D=');
t = input(['choose termination condition: \n' ...
    '1)|f(x)|< \n' ...
    '2)|Xn-Xn-1|< \n' ...
    '3)times of iteration \n']);
if f(a)==0
    fprintf('the root is :%f',a);
elseif f(b)==0
    fprintf('the root is :%f',b);
end
switch t
    case 1
        n = input("|f(x)|< ") ;
        disp('***************************************');
        c=b-((f(b)*(b-a))/(f(b)-f(a)));
        i = 2 ;
        if abs(f(c))<n
            fprintf(' n = 1 \t x = %f\t f(x) =%f  ',c,f(c));
        end 
        fprintf(' n = 0 \t  x =%f \t f(x) =%f \n',a,f(a));
        fprintf(' n = 1 \t  x =%f \t f(x) =%f \n',b,f(b));
        while abs(f(c))>n
            fprintf(' n = %f \t  x =%f ',i,c)
            c=b-((f(b)*(b-a))/(f(b)-f(a)));
            fprintf(' f(x) = %f \n',f(c))
            a = b;
            b = c;
            i = i+1 ;
        end
    case 2
        n = input("|Xn-Xn-1|< ") ;
        disp('***************************************');
        c=b-((f(b)*(b-a))/(f(b)-f(a)));
        i = 2 ;
        if abs(b-c)<n
            fprintf(' n = 1 \t x = %f\t f(x) =%f  ',c,f(c));
        end 
        fprintf(' n = 0 \t  x =%f \t f(x) =%f \n',a,f(a));
        fprintf(' n = 1 \t  x =%f \t f(x) =%f \n',b,f(b));
        while true
            fprintf(' n = %f \t  x =%f ',i,c)
            c=b-((f(b)*(b-a))/(f(b)-f(a)));
            fprintf(' f(x) = %f \n',f(c));
            if abs(b-c) <n
                break;
            end
            a = b;
            b = c;
            i = i+1 ;
        end
    case 3
        n = input("times of iteration : ") ;
        disp('***************************************');
        c=b-((f(b)*(b-a))/(f(b)-f(a)));
        fprintf(' n = 0 \t  x =%f \t f(x) =%f \n',a,f(a));
        fprintf(' n = 1 \t  x =%f \t f(x) =%f \n',b,f(b));
        for i = 2:n
            fprintf(' n = %f \t  x =%f ',i,c);
            c=b-((f(b)*(b-a))/(f(b)-f(a)));
            fprintf(' f(x) = %f \n',f(c));
            a = b;
            b = c;
        end
    otherwise
        disp('choose between the given options!');
        return;
end
% end of the switch case for termination condition


j=0;
if abs(c)>=1
    w=c ;
    j=1;
    while w > 0 
        w=w/10;
        j=j+1;
    end
end
fprintf(' your final answer is =  ')
vpa(c,d+j)
disp(' finish . ')
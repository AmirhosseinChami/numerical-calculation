% The error of the Four basic operations in mathematics
% Amirhossein Chami
close;
clear all;
clc;
n=input('Enter the number of value: ');
p=input('Enter number of  decimal digit you want: ');
x(1)=0;
e(1)=0;
for i=1:n
    x(i)=input('Enter value:');
    x(i)=round(x(i)*10^p)/10^p;
    e(i)=0.5*(10)^(-p);
end
t=input(['choose one operation: \n' ...
    '1) + or -\n' ...
    '2) * or /\n ']);
sum=0;
E=0;
switch t
    case 1
        for i=1:n
            sum=sum+x(i);
            E=E+e(i);
        end
        Value = [ num2str(sum-E),' <= sum <= ', num2str(sum+E), '']
    case 2
        if n==2
            i=1;
            sum=x(i+1)*x(i);         
            E=x(i)*e(i+1)+x(i+1)*e(i);
            E=E+0.5*10^(-p);
            E=round(E*10^p)/10^p;
            sum=round(sum*10^p)/10^p;
            Value = [ num2str(sum-E),' <= sum <= ', num2str(sum+E), '']
        end
        
        if n==3
            i=1;
            sum=x(i+2)*x(i+1)*x(i);         
            E=x(i)*x(i+1)*e(i+2)+x(i)*x(i+2)*e(i+1)+x(i+1)*x(i+2)*e(i);
            E=E+0.5*10^(-p);
            E=round(E*10^p)/10^p;
            sum=round(sum*10^p)/10^p;
            Value = [ num2str(sum-E),' <= sum <= ', num2str(sum+E), '']
        end
    otherwise
        disp('choose between the given options!');
        return;
end
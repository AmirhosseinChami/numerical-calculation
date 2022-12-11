% Absolute and Rlative Error
% made by Amirhossein Chami
close;
clear all;
clc;
A = input('Enter number : ');
AE = 0;
format rational
len=length(A);
for i=1:1:len
   temp=regexp(num2str(A(i)),'\.','split');
   n=length(temp{2});
   AE=AE+0.5*10^(-n);
end
fprintf('Absolute error : %f\n',AE);
RE=AE/A;
fprintf('Relative error : %f\n',RE);
r1=A+AE;
r2=A-AE;
fprintf('Range=  %f <= number <= %f \n', r2,r1);
disp('Finish.');

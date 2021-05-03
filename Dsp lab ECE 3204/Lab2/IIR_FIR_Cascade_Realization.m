%FIR or IIR Cascade Realization Structure
clc;
clear all;
format long;

%Numerators of transfer function
num=input('Numerator coefficient vector:');

%[1,-1.5,0.48,-0.33,0.9376,-0.5328]

%Denominator of tranfer function
den= input('Denominator coefficient vector:');

%[1,2.2,1.77,0.52,0,0]

%this function returns Zeros,Poles and Gain
[z,p,k]=tf2zp(num,den);

%this function returns 2nd order section coefficients
sos=zp2sos(z,p,k);

%rows of sos =number of cascade

%Analysis of result:
%sos(1,1)=b0 ,sos(1,2)=b1, sos(1,3)=b2
%sos(1,4)=1  ,sos(1,5)=a1, sos(1,6)=a2

%this six values make the first 2nd order section.... 

disp('poles');
disp(p);

disp('zeros');
disp(z);

disp('Gain');
disp(k);

disp('Second order section coeffs')
disp(sos);

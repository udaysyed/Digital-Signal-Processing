clc;
clear all;
format long;
%Numerator of transfer function
num=input('Input numerator vector:');

%[1,1,1,1]

%this function returns the zeros
FIR_cascade=roots(num);

disp('FIR Cascade=');
disp(FIR_cascade);


%this function also returns zero
%but we have to input den too but as fir doesn't have den we will input den
%and we will get zeros and poles is always 0 for fir filter
den=[1,zeros(1,length(num))];
[z,p,k]=tf2zp(num,den);

disp('zeros');
disp(z);
disp('poles');
disp(p);

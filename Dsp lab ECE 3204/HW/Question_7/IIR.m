clc;
clear all;
close all;

% coeffitiants of x in transfer function
b=[5,-2,2,0,-1];

% coeffitiants of y in transfer function
a=[1,1,0,-3,3];

%signal which we want to filter
n=0:1/100:1;
%disp(length(n))
x=5*sin(2*pi*3*n)+100.*randn(1,length(n));


%as its an iir filter it will consist of delayed version of y as feedback
%in input so the coeffs of y 'a' was added to filter

%filtered result
y=filter(b,a,x);

figure(1)
subplot(3,1,1);
stem(n,x,'r');
xlabel('sample index k');
ylabel('Amplitude')
title('actual signal with noise');


subplot(3,1,2);
stem(n,y,'b');
xlabel('sample index k');
ylabel('Amplitude');
title('filtered signal');

%this function returns Zeros,Poles and Gain
subplot(3,1,3);
zplane(b,a);
title('Pole Zero Diagram')
[z,p,k]=tf2zp(b,a);
%this function returns 2nd order section coefficients
sos=zp2sos(z,p,k);
disp('Second order section coeffs');
disp(sos);


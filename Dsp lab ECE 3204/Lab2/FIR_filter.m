clc;
clear all;
close all;

% coeffitiants of x in transfer function
b=[0.5,0.7,0.6,0.4];

% coeffitiants of y in transfer function
a=1;

%signal which we want to filter
n=0:1/500:1;
x=sin(2*pi*3*n)+rand(1,length(n));


%as its an fir filter it not will consist of delayed version of y as feedback
%in input so the coeffs of y 'a=1' was added to filter

%filtered result
y=filter(b,a,x);

figure(1)
stem(n,x,'r');
xlabel('sample index k');
ylabel('x');

hold on

stem(n,y,'b');
xlabel('sample index k');
ylabel('y');
legend('actual input','filtered input');
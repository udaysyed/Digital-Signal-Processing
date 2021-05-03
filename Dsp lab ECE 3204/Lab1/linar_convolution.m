clc;
clear all;
x=[1 1 2 1 2 2 1 1 ];
h=[1,2,-1,1];

y=conv(x,h)

n1=length(x);
n2=length(h);
N=n1+n2-1;

subplot(3,1,1);
stem(x,'black');
grid on;
title('X(n)');
xlabel('n');
ylabel('Amplitude');


subplot(3,1,2);
stem(h,'red');
grid on;
title('h(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,3);
stem(y,'blue');
grid on;
title('Convoluted signal');
xlabel('n');
ylabel('Amplitude');
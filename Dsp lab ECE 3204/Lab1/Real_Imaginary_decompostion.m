clc;
clear all;

n=0.25
x=exp(j*(n/3))

subplot(2,1,1);
stem(n,real(x));
xlabel('Index(n)');
title('Real Part');


subplot(2,1,2);
stem(n,imag(x));
xlabel('Index(n)');
title('Imaginary Part');




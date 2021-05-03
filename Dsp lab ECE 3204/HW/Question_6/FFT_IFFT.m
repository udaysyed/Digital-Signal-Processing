clc;
clear all;

t=0:1/100:2;

input=2*exp(5*t).*sin(50*pi*t);
%fast fourier transformation
Xk=fft(input);
%Inverse fft
xn=ifft(Xk);
%Magnitude response
magnitude=abs(Xk);
%Phase response
phase=angle(Xk);

figure(1);
subplot(4,2,[1 2]);
stem(t,input,'r');
xlabel('n----->');
ylabel('Amplitude');
title('Input sequence x(n)=2e^5^t.sin(50\pit)');

subplot(4,2,[3 4]);
stem(t,Xk,'b');
xlabel('k----->');
ylabel('Amplitude');
title('Fast Fourier transformed signal X(k)');

subplot(4,2,5);
stem(t,magnitude,'k');
xlabel('k----->');
ylabel('Amplitude');
title('Magnitude response of X(k)');

subplot(4,2,6);
stem(t,phase,'k');
xlabel('k----->');
ylabel('Phase');
title('Phase response of X(k)');


subplot(4,2,[7 8]);
stem(t,xn,'r');
xlabel('n----->');
ylabel('Amplitude');
title('Inverse Fast Fourier Transformation x(n)');


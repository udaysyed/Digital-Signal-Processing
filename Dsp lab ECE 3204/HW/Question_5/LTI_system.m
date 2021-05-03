clc;
clear all;

t=(0:.1:3)';

%input sequence

%u(t)
unitstep=zeros(size(t));
unitstep(t>=0)=1;
%u(t-2)
unitstep2=zeros(size(t));
unitstep2(t>=2)=1

input=sin(pi*t).*(unitstep-unitstep2)
figure(1);
subplot(3,1,1);
stem(t,input);
xlabel('n--->');
ylabel('Amplitude');
title('Input sequence x(t)=sin(\pit)[u(t)-u(t-2)] ');

%impulse response h(t)=e^(-3t) u(t)
impulse_response=exp(-3*t).*unitstep;

subplot(3,1,2);
stem(t,impulse_response);
xlabel('n--->');
ylabel('Amplitude');
title('impulse response h(t)=e^(^-^3^t^) u(t) ');

%convolved signal
y=conv(input,impulse_response);
subplot(3,1,3);
stem(y);
xlabel('n--->');
ylabel('Amplitude');
title('Convoluted Signal ');




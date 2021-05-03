clc;
clear all;
fs=500;
f=2;
a=2;
t=0:(1/fs):1;
sz=size(t); %this holds the shapeof 't' array.If we increase fs. shape of 't' will increase.

y=a.*sin(2*pi*f*t);


subplot(2,1,1);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Sinusoidal signal');

y=a.*cos(2*pi*f*t);

subplot(2,1,2);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Cosine signal');
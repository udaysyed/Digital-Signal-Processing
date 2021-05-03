clc;
clear all;
f=10;                              %max frequency
fs1=10*f;                          %first sampling frequency
fs2=1.5*f;                         %second sampling frequency

t1=0:1/fs1:1;
t2=0:1/fs2:1;

y1=3*sin(20*pi*t1);                %signal with 10 times of max frequency
y2=3*sin(20*pi*t2);                  %signal with 1.5 times of max frequency

figure(1);
subplot(2,1,1);
stem(t1,y1,'b');
hold on;
plot(t1,y1,'r','LineStyle','--');
xlabel('time')
ylabel('Amplitude')
title('Sinusoidal signal with sampling frequency of 10 times the max frequency ')

subplot(2,1,2);
stem(t2,y2,'b');
hold on;
plot(t2,y2,'r','LineStyle','--');
xlabel('time')
ylabel('Amplitude')
title('Sinusoidal signal with sampling frequency of 1.5 times the max frequency ')


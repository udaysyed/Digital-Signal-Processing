clc;
clear all;

t=0:1/1500:1;
N=length(t);
signal=2*cos(2*pi*3*t);             %cosine signal with amp=2 and f=3
random1=rand(1,N);                  %Uniformly distributed random signal
noisy_signal1=signal+random1;       %random signal added to cosine signal
random2=rand(1,N);                  %Another uniformly distributed random signal
noisy_signal2=signal+random2;    

figure(1);
subplot(4,2,1);
plot(t,random1,'r');
title('First Uniformly distributed Random Signal');
xlabel('time');
ylabel('Amplitude');

subplot(4,2,2);
plot(t,random2,'m');
title('Second Uniformly distributed Random Signal');
xlabel('time');
ylabel('Amplitude');

subplot(4,2,[3 4]);
plot(t,signal,'b');
grid;
title('Cosine signal');
xlabel('time');
ylabel('Amplitude');

subplot(4,2,5);
plot(t,noisy_signal1,'r');
grid;
title('Noisy signal 1');
xlabel('time');
ylabel('Amplitude');

subplot(4,2,6);
plot(t,noisy_signal2,'m');
grid;
title('Noisy signal 2');
xlabel('time');
ylabel('Amplitude');

subplot(4,2,7);
hist(random1);
grid;
title('Pdf of Random  signal 1');
xlabel('Sample Number');
ylabel('Total');

subplot(4,2,8);
hist(random2);
grid;
title('Pdf of Random  signal 2');
xlabel('Sample Number');
ylabel('Total');
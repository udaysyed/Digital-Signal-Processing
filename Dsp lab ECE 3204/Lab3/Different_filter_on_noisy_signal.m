clc;
clear all;
close all;
fs=1e4;
t=0:1/fs:5;
sw=sin(2*pi*262.62*t);          %sinusoidal wave
n=0.1*randn(size(sw));          %noise
swn=sw+n;

%--------------Butterworth filter of order 2 fc=400------------------------

N=2;
fc=400;                          %cutoff frequency
fn=fs/2;                         %normalized frequency(0.5 of sampling)
fcn=fc/fn;                       %normalized cutoff frequency

[b,a]=butter(N,fcn);

figure(1);
w=linspace(0,fn/fc,fc);
[h,f]=freqz(b,a);
plot(f,20*log10(abs(h)));
grid;
ylabel('Magnitude(db)');
xlabel('Frequency(Hz)');

%----------------------Using filter()--------------------------------------

y1=filter(b,a,swn);

figure(2);

subplot(3,1,1);
plot(t,sw);
axis([0 0.04 -1.1 1.1]);
title('Original Signal');
soundsc(sw,fs);

subplot(3,1,2);
plot(t,swn);
axis([0 0.04 -1.1 1.1]);
title('Noisy Signal');
soundsc(swn,fs);

subplot(3,1,3);
plot(t,y1);
axis([0 0.04 -1.1 1.1]);
title('Using filter');
soundsc(y1,fs);


%---------------------Using filtfilt()-------------------------------------

y2=filtfilt(b,a,swn);

figure(3);
subplot(311);
plot(t,sw);
axis([0 0.04 -1.1 1.1]);
title('Original Signal');
soundsc(sw,fs);

subplot(312);
plot(t,swn);
axis([0 0.04 -1.1 1.1]);
title('Noisy Signal');
soundsc(swn,fs);

subplot(313);
plot(t,y2);
axis([0 0.04 -1.1 1.1]);
title('Filtered Signal using filtfilt(Zero-phase filter)');
soundsc(y2,fs);

%-------------------------Using Impulse invariant method-------------------

[bz1,az1]=impinvar(b,a,fs);
y3=filter(bz1,az1,swn);

figure(4);
subplot(311);
plot(t,sw);
axis([0 0.04 -1.1 1.1]);
title('Original Signal');
soundsc(sw,fs);

subplot(312);
plot(t,swn);
axis([0 0.04 -1.1 1.1]);
title('Noisy Signal');
soundsc(swn,fs);

subplot(313);
plot(t,y3);
axis([0 0.04 -1.1 1.1]);
title('Filtered Signal using impulse invariant method');
soundsc(y3,fs);

%------------------------Using bilinear z transformation-------------------

[bz2,az2]=bilinear(b,a,fs);
y4=filter(bz2,az2,swn);

figure(5);
subplot(311);
plot(t,sw);
axis([0 0.04 -1.1 1.1]);
title('Original Signal');
soundsc(sw,fs);

subplot(312);
plot(t,swn);
axis([0 0.04 -1.1 1.1]);
title('Noisy Signal');
soundsc(swn,fs);

subplot(313);
plot(t,y4);
axis([0 0.04 -1.1 1.1]);
title('Filtered Signal using bilinear method');
soundsc(y4,1e4);

%-----------------Using fftfilt()-----------------------------------------

y5=fftfilt(b,swn);

figure(6);
subplot(311);
plot(t,sw);
axis([0 0.04 -1.1 1.1]);
title('Original Signal');
soundsc(sw,1e4);

subplot(312);
plot(t,swn);
axis([0 0.04 -1.1 1.1]);
title('Noisy Signal');
soundsc(swn,1e4);

subplot(313);
plot(t,y5);
axis([0 0.04 -1.1 1.1]);
title('Filtered Signal using fftfilt(overlap add)');
soundsc(y5,1e4);


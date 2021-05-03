%%%Question: A lowpass,discrete time filter with butterworth characterstics
%%%is required to meet the following specs Prog 8B.1 page564
%%% 1)Cut off frquency=350 hz
%%% 2)Filter order=4
%%% 3)Sampling Frequency=2000 hz

%%% a)Magnitude-freq and group delay response of the filter using impulse
%%% invariant method

clc;
clear all;

Fs=2000;                             %sampling frequency
fc=350;                              %Cut off frequency
WC=2*pi*fc;                          %cutoff frequency in radian
N=4;                                 %Filter order
[b1,a1]=butter(N,WC,'s');              %Created an analog filter; b and a analog domain
[bz1,az1]=impinvar(b1,a1,Fs);            %Determined coeffs of IIR Filter


%Plotting frequency response
subplot(2,3,1);
[h1,f1]=freqz(bz1,az1,512,Fs);
plot(f1,20*log10(abs(h1)));
grid;
ylabel('Gain (dB)');
xlabel('Frequency (Hz)');
title('Frequency response of Impulse Invariant Method');

subplot(2,3,2);
[GD1,w1]=grpdelay(bz1,az1);
plot(w1,GD1);
grid on;
xlabel('Frequency (rad/sample)');
ylabel('Delay (samples)');
title('Group Delay of Impulse Invariant Method');

subplot(2,3,3);
zplane(bz1,az1);
title('Pole Zero diagram of impulse invariance method')


%%% b)Magnitude-freq and group delay response of the filter using bilinear
%%% z transform method

[b2,a2]=butter(N,fc/(Fs/2));

subplot(2,3,4);
[h2,f2]=freqz(b2,a2,512,Fs);
plot(f2,abs(h2),'r');
xlabel('Frequency (Hz)');
ylabel('Magnitude Response');
title('Frequency response of BZT Method');

subplot(2,3,5);
[GD2,w2]=grpdelay(b2,a2);
plot(w2,GD2,'r');
grid on;
xlabel('Frequency (rad/sample)');
ylabel('Delay (samples)');
title('Group Delay of Bilinear Z transformation method');

subplot(2,3,6);
zplane(b2,a2);
title('Pole Zero Diagram of Bilinear Z transformation method')





%%%Question: A lowpass,discrete time filter with butterworth characterstics
%%%is required to meet the following specs
%%% 1)Cut off frquency=300 hz
%%% 2)Filter order=5
%%% 3)Sampling Frequency=1000 hz

%----------------Creating an analog butterworth filter---------------------

FN=1000/2;
fc=300;       %Cutoff frequency
N=5;          %Filter order
[z,p,k]=buttap(N);

%Plotting response of filter
w=linspace(0,FN/fc,1000);
h=freqs(k*poly(z),poly(p),w);
f=fc*w;

plot(f,20*log10(abs(h)));
grid;
ylabel('Magnitude (dB)');
xlabel('Frequency (Hz)');
title('Frequency response');

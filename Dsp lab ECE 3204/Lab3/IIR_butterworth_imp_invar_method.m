%%%Question: A lowpass,discrete time filter with butterworth characterstics
%%%is required to meet the following specs Prog 8B.1 page564
%%% 1)Cut off frquency=150 hz
%%% 2)Filter order=2
%%% 3)Sampling Frequency=1280 hz

%%% a)Magnitude-freq and group delay response of the filter using impulse
%%% invariant method


%a)

Fs=1280;                             %sampling frequency
fc=150;                              %Cut off frequency
WC=2*pi*fc;                          %cutoff frequency in radian
N=2;                                 %Filter order
[b,a]=butter(N,WC,'s');              %Created an analog filter; b and a analog domain
[bz,az]=impinvar(b,a,Fs);            %Determined coeffs of IIR Filter


%Plotting frequency response
subplot(2,1,1)
[h,f]=freqz(bz,az,512,Fs);
plot(f,20*log10(abs(h)));
grid;
ylabel('Magnitude (dB)');
xlabel('Frequency (Hz)');
title('Frequency response');

%Plotting poles and zeros
subplot(2,1,2);
zplane(bz,az);
zz=roots(bz);                          %zeros
pz=roots(az);                          %poles

disp('Zeros:');
disp(zz);
disp('Poles:');
disp(pz);
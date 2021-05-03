%%%Question: A lowpass,discrete time filter with butterworth characterstics
%%%is required to meet the following specs Prog 8B.2 page566
%%% 1)Cut off frquency=150 hz
%%% 2)Filter order=2
%%% 3)Sampling Frequency=1280 hz

%%% b)Magnitude-freq and group delay response of the filter using bilinear
%%% z transform method

N=2;                               %Filter Order
Fs=1280;                           %Sampling Frequency
FN=Fs/2;                           %?????
fc=150;                            %Cutoff frequency
Fc=fc/FN;                          %Normalized cutoff frequency

[b,a]=butter(N,Fc);                %Create digitalized analogue filter

subplot(2,1,1);
[h,f]=freqz(b,a,512,Fs);
plot(f,abs(h));
xlabel('Frequency (Hz)');
ylabel('Magnitude Response');

subplot('2,1,2');
zplane(b,a)
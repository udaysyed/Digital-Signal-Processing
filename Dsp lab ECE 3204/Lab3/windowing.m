clc;
clear all;
close all;

M=15;
n=[0:(M-1)];

om=linspace(-pi,pi,201);
oc=pi/4;

hd=inline('oc/pi*sinc(oc/pi*(n-(M-1)/2))','n','oc','M');
Hd=inline('1*(abs(om)<oc)','om','oc');

%Hanning window applied to ideal impulse response
hn_hann=hd(n,oc,M) .* hann(M)' ;

%Rectangular window applied to ideal impulse response
hn_rectwin=hd(n,oc,M) .* rectwin(M)' ;

%Blackman window applied to ideal impulse response
hn_blackman=hd(n,oc,M) .* blackman(M)' ;

%Hamming window applied to ideal impulse response
hn_hamming=hd(n,oc,M) .* hamming(M)' ;

%Kaiser window applied to ideal impulse response
hn_kaiser=hd(n,oc,M) .* kaiser(M)' ;

%Triangular window applied to ideal impulse response
hn_triang=hd(n,oc,M) .* triang(M)' ;

%-----------------------------PLOTTING---------------------------------

figure(1);

subplot(221);
stem(n,hn_rectwin,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Rectangualar Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_rectwin,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Rectangular)');



figure(2);

subplot(221);
stem(n,hn_hann,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Hanning Window Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_hann,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Hanning)');


figure(3);

subplot(221);
stem(n,hn_blackman,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Blackman Window Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_blackman,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Blackman)');

figure(4);

subplot(221);
stem(n,hn_hamming,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Hamming Window Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_hamming,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Hamming)');

figure(5);

subplot(221);
stem(n,hn_kaiser,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Kaiser Window Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_kaiser,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Kaiser)');

figure(6);

subplot(221);
stem(n,hn_triang,'filled');
axis([0 M-1 -0.1,0.3]);
xlabel('n');
ylabel('h[n]');
title(sprintf('Triangular Window Lowpass, M=%d',M));

subplot(222);
H= freqz(hn_triang,1,om); %freq response in z domain, freqs() in s domain
plot(om,20*log10(abs(H)),'-',om,20*log10(max(Hd(om,oc),eps)),'--');
xlabel('\omega');
ylabel('|H(\omega)| (dB)');
title('Magnitude Response(Triangular)');


%discrete fourier transformation (DFT) for N point sequence
%inverse discrete fourier transformation (IDFT) for N point sequence

clc;
clear all;
disp('The i/p sequence');
xn=input('Enter input sequence');

%Let's store the length of the input sequence
N=length(xn);

%In this matrix we will store the discrete fourier transform result, we
%initiated it with zeros
Xk=zeros(1,N);

%In this matrix we will store the discrete inverse fourier transform result, we
%initiated it with zeros
iXk=zeros(1,N);

for k=0:N-1
    
    for n=0:N-1
        
        Xk(k+1)=Xk(k+1)+(xn(n+1)*exp((-i)*2*pi*k*n/N));
    end
end

%Plotting the input
t=0:N-1;
subplot('421');
stem(t,xn);
ylabel('Amplitude');
xlabel('time');
title('Input Sequence');

%Plotting the Fourier transformed result
t=0:N-1;
subplot('422');
stem(t,Xk);
ylabel('Amplitude');
xlabel('time');
title('Fast Fourier Transformation (Manual) X(k)');

%Find the magnitude of each points in X(k)
magnitude=abs(Xk);
%Find the phase of each point in X(k)
phase=angle(Xk);

%Plotting the magnitude of each points in X(k)

disp('The magnitude response of X(k):');
disp(magnitude);

t=0:N-1;
subplot('423');
stem(t,magnitude);
ylabel('Amplitude');
xlabel('K');
title('Magnitude Response');

%Plotting the phase of each points in X(k)

disp('The phase response of X(k):');
disp(phase);

t=0:N-1;
subplot('424');
stem(t,phase);
ylabel('phase');
xlabel('K');
title('Phase Response');

%Inverse fourier transformation(be careful 'n' in outer loop this time and i positive)

for n=0:N-1
    
    for k=0:N-1
        
        iXk(n+1)=iXk(n+1)+(Xk(k+1)*exp((i)*2*pi*k*n/N));
    end
end

iXk=iXk./N;

%Plotting the Fourier transformed result
t=0:N-1;
subplot('425');
stem(t,iXk);
ylabel('Amplitude');
xlabel('time');
title('Inverse Fast Fourier Transformation (Manual) iXk');

%FFT using buit in function

x2=fft(xn);
subplot('426');
stem(t,x2);
ylabel('Amplitude');
xlabel('time');
title('X(k)(buit in function)');

%IFFT using buit in function

x3=ifft(x2);
subplot('427');
stem(t,x3);
ylabel('Amplitude');
xlabel('time');
title('iX(k)(buit in function)');

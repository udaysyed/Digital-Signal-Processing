clc;
clear all;
t=0:1:10; %number of elements=(last digit/middle digit)+1

%UNIT IMPULSE SIGNAL
y=[zeros(1,5),ones(1,1),zeros(1,5)];

subplot(2,2,1);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Unit Impulse Signal')

%RAMP SIGNAL
y=0:1:10;

subplot(2,2,2);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Ramp Signal')

%UNIT STEP SIGNAL
y=[ones(1,11)];

subplot(2,2,3);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Unit Step Signal')

%EXPONENTIAL SIGNAL
y=[exp(t)];

subplot(2,2,4);
stem(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Exponential Signal')


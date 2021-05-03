clc;
clear all;
x=[1 2 3 4];
h=[5 6 7 8];

y=xcorr(x,h);

subplot(3,1,1);
stem(x);
title('Input sequence 1');
xlabel('n');
ylabel('Amplitude');


subplot(3,1,2);
stem(h);
title('Input sequence 2');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,3);
stem(fliplr(y));
title('Output sequence');
xlabel('n');
ylabel('Amplitude');

disp('Resultant output sequence');
fliplr(y)
clc;
clear all;

%Question A and B

t=-5:1:10;
%3u(t-3)-u(t-7)
y1=3.*unit_step_function(t-3)-unit_step_function(t-7);
%\delta(t+2)-2\delta(t-20
y2=unit_impulse_function(t+2)-2.*unit_impulse_function(t-2);

%Question C

t1=-5:1/25:10;
% 5e^3t sin(48\pit)+3cos(60\pit)
y3=5.*exponential(3,t1).*sinusoidal(48,t1,0)+3.*sinusoidal(60,t1,90);

%Dual Axis Plot
figure(1);
[ax,h1,h2]=plotyy([t',t'],[y1',y2'],t1,y3,'stem','stem');
xlabel('n------------>');
ylabel(ax(1), 'Axis 1 Amplitude (for A & B)');
ylabel(ax(2), 'Axis 2 Amplitude (for C)');
set(ax,{'ycolor'},{'k';'k'});
set(ax(1),'ytick',[-2 -1 0 1 2 3 4]);
set(ax,'xtick',linspace(-5,10,16));
set(h2,'color','g');
grid on;

legend([h1(1) h1(2) h2],'A)3u(t-3)-u(t-7)','B)\delta(t+2)-2\delta(t-2)','C)5e^(^3^t^) sin(48\pit)+3cos(60\pit)');
title('Question 1(Dual Axis Plot)');


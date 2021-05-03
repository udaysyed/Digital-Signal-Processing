clc;
clear all;
close all;

n1=-1:0.001:0;
x1=ramp_function(-n1-1);

n2=0:0.001:1;
x2=ramp_function(n2);

n3=1:0.001:2;
x3=unit_step_function(n3-1);

n4=2:0.001:3;
x4=ramp_function(3-n4);

time=[n1 n2 n3 n4];
signal=[x1 x2 x3 x4];

subplot('211');
plot(time,signal,'linewidth',3);
xlabel('t------>');
ylabel('Amplitude');
title('x(t)');
grid on;




m1=-2:0.001:-1;
y1=unit_step_function(n1+2);

m2=-1:0.001:0;
y2=-1*unit_step_function(n2+1);

m3=0:0.001:1;
y3=ramp_function(n3-1);

m4=1:0.001:2;
y4=unit_step_function(n4-1);

time=[-2 m1 m2 m3 m4 2];
signal=[0 y1 y2 y3 y4 0];
subplot(2,1,2);
plot(time,signal,'LineWidth',3);
xlabel('t------>');
ylabel('Amplitude');
title('y(t)');
grid;
clc;
close all;
x=rand(100,1);
y=x+rand(100,1);

figure(1);
plot(x,y,'o','MarkerSize',2)

r=corrcoef(x,y);
z=randn(100,1);

figure(2);
plot3(x,y,z,'.');
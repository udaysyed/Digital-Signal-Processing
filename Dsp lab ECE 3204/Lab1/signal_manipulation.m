N=128;
f1=150;
f2=450;
f3=1500;
fs=8000;

n=0:N-1;
size(n)
x1=sin(2*pi*(f1/fs)*n);
x2=(1/3).*sin(2*pi*(f2/fs)*n);
x3=sin(2*pi*(f3/fs)*n);

figure(1);
subplot(2,3,1);
plot(n,x1);
grid;
title('Signal x(1)');


subplot(2,3,2);
plot(n,x2);
title('Signal x(2)');

subplot(2,3,3);
plot(n,x3);
title('Signal x(3)');

%signal delay
xid=[zeros(1,20),x1(1:N-20)];

subplot(2,3,4);
plot(n,xid);
title('Signal x(1) delayed 20 units');

%signal addition
xadd=x1+x2;
subplot(2,3,5);
plot(n,xadd);
grid;
title('x(1)+x(2)');

%signal multiplication
xmul=x1.*x3;
subplot(2,3,6);
plot(n,xmul);
grid;
title('x(1)*x(3)');



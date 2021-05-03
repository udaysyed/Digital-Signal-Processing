disp('linear convolution program');

x=input('enter i/p x(n):');
m=length(x);
h=input('enter filter h(n):');
n=length(h);

x=[x,zeros(1,n)];

subplot(2,2,1);
stem(x);
title('input sequence x(n)');
xlabel('n');
ylabel('x(n)');
grid;

h=[h,zeros(1,m)];

subplot(2,2,2);
stem(h);
title('input sequence h(n)');
xlabel('n');
ylabel('h(n)');
grid;

disp('linear convolution of x(n) and y(n) is h(n)')

y=zeros(1,n+m-1);

for i=1:n+m-1
    y(i)=0;
    for j=1:n+m-1
        if(j<i+1)
            y(i)=y(i)+x(j)*h(i-j+1);
        end
    end
end

y

subplot(2,2,[3,4]);
stem(y);
title('convoluted signal y(n)');
xlabel('n');
ylabel('y(n)');
grid;
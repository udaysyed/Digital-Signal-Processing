N=1024;
R1=randn(1,N);
R2=rand(1,N);

figure(1);
subplot(2,2,1);
plot(R1);
grid;
title('Normal (Gaussian) Distribution of Random Signal');
xlabel('Sample Number');
ylabel('amplitude');

subplot(2,2,2);
hist(R1);
grid;
title('Pdf of  a Normal Random Signal');
xlabel('Sample Number');
ylabel('Total');

subplot(2,2,3);
plot(R2);
grid;
title('Uniform Distribution of Random Signal');
xlabel('Sample Number');
ylabel('amplitude');


subplot(2,2,4);
hist(R2);
grid;
title('pdf of a uniform random signal');
xlabel('Sample Number');
ylabel('Total');

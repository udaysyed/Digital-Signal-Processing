clc;
clear all;
for t=-5:1:10
    %3u(t-3)-u(t-7)
    y1=3.*unit_step(t,-3)-unit_step(t,-7);
    figure(1)
    h1=stem(t,y1,'color','r');
    hold on;
    
    %?(t+2)-2?(t-2)
    y2=impulse(t,2)-2.*impulse(t,-2);
    h2=stem(t,y2,'color','g')
    hold on;
        
end

for t=-5:.25:10
    % 5e^3t sin(48?t)+3cos(60?t)
    y3=5*exponential(3,t)*sinusoidal(48,t,0)+3*sinusoidal(60,t,90);
    h3=stem(t,y3,'color','b');
    hold on;
end

ylim([-8 8]);
xlabel('Time');
ylabel('Amplitude');
title('Question i');
legend([h1 h2 h3],'3u(t-3)-u(t-7)','\delta(t+2)-2\delta(t-2)','5e^(^3^t^) sin(48*pi*t)+3cos(60*pi*t)');

clear all;
for t=0:1/1500:1
    stem(t,sinusoidal(6,t,90))
    hold on;
end
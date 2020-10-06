clear all
close all
t = [0:1/1000:20];
x = t' * 1;
y = 3 * sin(2 * pi * x);
plot(x,y);
axis([0 20 -4 4]);
grid on

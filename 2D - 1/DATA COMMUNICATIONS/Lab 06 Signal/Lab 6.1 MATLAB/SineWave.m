clear all
close all
t = 20; Fs = 1;
x = [0:t];
y = 3 / 20 * sin(2 * Fs * pi * x);
plot(x,y);
axis([0 20 -4 4]);
grid on

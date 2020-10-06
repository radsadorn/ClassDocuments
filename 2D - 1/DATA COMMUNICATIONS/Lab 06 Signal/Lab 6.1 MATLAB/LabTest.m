clear all
close all
x = [0:10];
m = -2;
c = 3;
y1 = m*x + c;
y2 = c.^x;
figure(1);
plot(x,y1);
figure(2);
plot(x,y2);
figure(3);
subplot(2,1,1); plot(x,y1);
subplot(2,1,2); plot(x,y2);
figure(4);
subplot(1,2,1); plot(x,y1);
subplot(1,2,2); plot(x,y2);
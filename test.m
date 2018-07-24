t=[0:0.01:0.98];
t
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
plot(t,y2);
plot(t,y1);
hold on;
plot(t,y2,'r');
xlabel('time');
ylabel('value');

t = 0:0.01:2*pi;
x = sin(t.*t);
y = cos(1./t);
z = t
subplot(221), plot3(x,y,t), grid on
subplot(222), plot3(x,y,t),grid on, view([0 0 1])
subplot(223), plot3(x,y,t),grid on, view([0 1 0])
subplot(224), plot3(x,y,t),grid on, view([1 0 0])

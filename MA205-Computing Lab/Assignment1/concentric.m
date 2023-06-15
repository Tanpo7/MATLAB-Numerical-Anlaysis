close all
clear

theta = [-pi:pi/39:pi];

hold on;
for r = [1,3,5,7,9,11]
plot(r*sin(theta),r*cos(theta))
end
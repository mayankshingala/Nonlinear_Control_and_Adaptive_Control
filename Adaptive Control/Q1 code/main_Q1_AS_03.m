%% Question 1 (ASSIGNMENT-03)

close all
clear all
clc

% Initial conditions to start the Simulation
% y0(1:3) = x(3x1)
% y0(4:6) = xm(3x1)
% y0(7:9) = Kx(1x3)
% y0(10) = Kr(1x1)
% y0 = [x xm Kx Kr]
y0 = [1    2   -2   ...
      2    0.1   -2   ...
      -1    0.2     2 ...
      2];

[t,y] = ode45(@dy_dt_Q1, [0 50], y0);

plotting_Q3;

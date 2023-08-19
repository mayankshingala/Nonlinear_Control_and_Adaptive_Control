%% Question-02 Assignment-03

close all
clear all
clc

y0 = [1    2 ...
     -1    3 ...
      2   2   4    6    4];

[t,y] = ode45(@dy_dt_Q2, [0 40], y0);

plotting_Q2;

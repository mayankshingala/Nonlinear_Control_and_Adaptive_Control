close all;
clear all;
clc

initial_conditions;

tf = 80;

[t,y] = ode45(@(t,y) dy_dt(mc,m,l,g,a,c,k1,k2,t,y), [0  tf], y0);

u = y(:,1)*0;
for i = 1:length(y(:,1:2))
    u(i) = control(mc,m,l,g,a,c,k1,k2,y(i,:)')';
end

plotting;
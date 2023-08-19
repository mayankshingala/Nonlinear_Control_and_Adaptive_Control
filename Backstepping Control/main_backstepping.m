%% Question-01 Assignment-02 (Backstepping control)

close all;
clear all;
clc

initial_conditions;

tf = 50;        % Integration limit (Time)

[t,y] = ode45(@(t,y) dy_dt(J,K,t,y), [0  tf], y0);

for i = 1:length(y(:,1:3))
    u(i,:) = control(J,K,y(i,1:3)',y(i,4:6)')';
end

plotting
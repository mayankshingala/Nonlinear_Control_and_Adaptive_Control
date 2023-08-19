%% Plotting Q1
figure(1);

plot(t,y(:,1), t,y(:,4));
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x1, x1_m', 'FontWeight','bold');
legend('x','x_m');
title('MRAC, X_1 state', 'FontWeight','bold')

figure(2);
plot(t,y(:,2), t,y(:,5));
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x2, x2_m', 'FontWeight','bold');
title('MRAC, X_3 state', 'FontWeight','bold')

figure(3);
plot(t,y(:,3), t,y(:,6));
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x3, x3_m', 'FontWeight','bold');
title('MRAC, X_3 state', 'FontWeight','bold')
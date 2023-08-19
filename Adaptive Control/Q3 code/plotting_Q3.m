%% Plotting Q3

figure(1);
plot(t,y(:,1),'-.r');
hold on
plot(t,y(:,4),'k');
hold off
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x_1, x_1_m', 'FontWeight','bold');
legend('x','x_1_m');
title('MRAC, X_1 state', 'FontWeight','bold')

figure(2);
plot(t,y(:,2),'-.r');
hold on
plot(t,y(:,5),'k');
hold off
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x_2, x_2_m', 'FontWeight','bold');
title('MRAC, X_2 state', 'FontWeight','bold')

figure(3);
plot(t,y(:,3),'-.r');
hold on
plot(t,y(:,6),'k');
hold off
xlabel('t [sec]', 'FontWeight','bold');
ylabel('x_3, x_3_m', 'FontWeight','bold');
title('MRAC, X_3 state', 'FontWeight','bold')
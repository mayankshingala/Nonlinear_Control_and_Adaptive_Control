%% Question-02 Assignment-03 (Plots)

figure(1);
plot(t,y(:,1),'-.r')
hold on
plot(t,y(:,3),'k')
hold off
title('MRAC, X_1 state', 'FontWeight','bold')
xlabel('t [sec]', 'FontWeight','bold')
ylabel('x_1, x_1_m', 'FontWeight','bold')
legend('x_1','x_1_m', 'FontWeight','bold')

figure(2)
plot(t,y(:,2),'-.r')
hold on
plot(t,y(:,4),'k')
hold off
title('MRAC, X_2 state', 'FontWeight','bold')
xlabel('t [sec]', 'FontWeight','bold')
ylabel('x_2, x_2_m', 'FontWeight','bold')
legend('x_2','x_2_m', 'FontWeight','bold')

figure(3);
subplot(5,1,1);
plot(t,y(:,5),'k');
ylabel('$$\hat{a_0}$$','Interpreter','Latex', 'FontWeight','bold')
title('Estimation of Plant parameters', 'FontWeight','bold')

subplot(5,1,2);
plot(t,y(:,6),'k');
ylabel('$$\hat{a_1}$$','Interpreter','Latex', 'FontWeight','bold')

subplot(5,1,3);
plot(t,y(:,7),'k');
ylabel('$$\hat{a_2}$$','Interpreter','Latex', 'FontWeight','bold')

subplot(5,1,4);
plot(t,y(:,8),'k');
ylabel('$$\hat{a_3}$$','Interpreter','Latex', 'FontWeight','bold')

subplot(5,1,5);
plot(t,y(:,9),'k');
xlabel('t', 'FontWeight','bold');
ylabel('$$\hat{b_0}$$','Interpreter','Latex', 'FontWeight','bold')
%% plot

figure('Name','Question-02 (Assignment-02)','NumberTitle','off')

subplot(3,1,1);
plot(t,y(:,1),'r'); 

ylabel('\theta','FontSize',13);
grid on

subplot(3,1,2);
plot(t,y(:,2),'r');
ylabel('$\dot{\theta}$', 'Interpreter','latex','FontSize',13)
grid on

subplot(3,1,3);
plot(t,u,'r');
ylabel('u','FontSize',13);
xlabel('t','FontSize',13);
grid on

sgt = sgtitle('**Question 2** Control of inverted pendulum by Sliding Mode Controller')
sgt.FontSize = 20;
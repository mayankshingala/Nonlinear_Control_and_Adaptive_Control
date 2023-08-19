%% Plot

figure('Name','Question-01 (Assignment-02)','NumberTitle','off')

subplot(3,1,1);
plot(t,y(:,1),'r', t,y(:,2),'g', t,y(:,3),'b');
ylabel('\bf \rho');
legend('x','y','z','Location','Northeast');
grid on

subplot(3,1,2);
plot(t,y(:,4),'r', t,y(:,5),'g', t,y(:,6),'b');
ylabel('\bf \omega');
grid on

subplot(3,1,3);
plot(t,u(:,1),'r', t,u(:,2),'g', t,u(:,3),'b');
xlabel('\bf t [sec]');
ylabel('\bf \tau');
grid on

sgt = sgtitle('**Question 1** Control of spacecraft by back-stepping method')
sgt.FontSize = 20;



%% Question-02 Assignment-03 (function dy_dt)

function dy = dy_dt_Q2(t,y)

x1 = y(1);
x2 = y(2);

xm1 = y(3);
xm2 = y(4);

a0_h = y(5);
a1_h = y(6);
a2_h = y(7);
a3_h = y(8);

b0_h = y(9);

% Reference input
r = 2*sin(t) + 2*cos(1.5*t);

% Controller
u = (1/b0_h)*( -a1_h*sin(2*x2) - a2_h*cos(x2) - a3_h*tanh(x1) - 4*x1 - 3*x2 - a0_h*x1 ) + (r/b0_h) ;

a0 = 1;
a1 = 1;
a2 = 2;
a3 = 3;
b0 = 2;

dx1 = x2;
dx2 = a0*x1 + a1*sin(2*x2) + a2*cos(x2) + a3*tanh(x1) + b0*u;

% Reference Model
xm1_dot = xm2;
xm2_dot = - 4*xm1 - 3*xm2 + r;

% Adaptive Laws
e1 = x1 - xm1;
e2 = x2 - xm2;

gamma_a0 = 10;
gamma_a1 = 10;
gamma_a2 = 10;
gamma_a3 = 10;
gamma_b0 = 10;

a0_h_dot = (1/gamma_a0) * (6*e1 + 10*e2) * x1 ;
a1_h_dot = (1/gamma_a1) * (6*e1 + 10*e2) * sin(2*x2) ;
a2_h_dot = (1/gamma_a2) * (6*e1 + 10*e2) * cos(x2) ;
a3_h_dot = (1/gamma_a3) * (6*e1 + 10*e2) * tanh(x1) ;
b0_h_dot = (1/gamma_b0) * (6*e1 + 10*e2) * u ;

dy = [dx1 dx2 xm1_dot xm2_dot a0_h_dot a1_h_dot a2_h_dot a3_h_dot b0_h_dot]';

end
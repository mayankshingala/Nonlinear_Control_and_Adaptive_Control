%% dydt function
function dy = dy_dt_Q1(t, y)

A = [0 1 0; 0 0 1; -3 -2 -2];
B = [0; 0; 1];
Am = [0 1 0; 0 0 1; 0 -4 -3.6];
Bm = [0; 0; 1];

x = reshape(y(1:3), [3 1]);
xm = reshape(y(4:6), [3 1]);
Kx = reshape(y(7:9), [1 3]);
Kr = y(10);

r = 4*sin(t) + cos(0.5*t);

% Controller
u = Kx*x + Kr*r;

% Plant & Reference model
x_dot = A*x + B*u;
xm_dot = Am*xm + Bm*r;

% Adaptive Laws
gammax = eye(1);
gammar = eye(1);
P = lyap(Am', eye(3));          % Solution of Lyapunov function AX+XA'+Q=0 (Q=eye(3))
e = xm - x;

dKx = gammax * B' * P * e * x' ;
dKr = gammar * B' * P * e * r ;

dKx = reshape(dKx, [3 1]);      % Conversion to get compatible with vector
% dKr = reshape(dKr, [4 1]);

dy = [x_dot; xm_dot; dKx; dKr];

end
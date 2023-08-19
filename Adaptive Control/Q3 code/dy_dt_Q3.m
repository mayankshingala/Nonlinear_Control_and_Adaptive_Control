%% dydt function

function dy = dy_dt_Q3(t, y)

A = [1 2 1; 3 2 1; 8 5 3];
B = [1 2; 3 1; 2 4];
Am = -[4 2 2; 2 5 3; 2 3 3];
Bm = [5 4; 5 7; 10 8];

x = reshape(y(1:3), [3 1]);
xm = reshape(y(4:6), [3 1]);
Kx = reshape(y(7:12), [2 3]);
Kr = reshape(y(13:16), [2 2]);

r = [sin(t) + 0.5*cos(0.5*t);   
    sin(t) - 0.5*cos(0.5*t)];

% Controller
u = Kx*x + Kr*r;

% Plant
dx = A*x + B*u;
dxm = Am*xm + Bm*r;

% Adaptive Laws

gammax = eye(3);
gammar = eye(2);
P = lyap(Am', eye(3));          % Solution of Lyapunov function AX+XA'+Q=0 (Q=eye(3))
e = xm - x;

dKx = transpose(gammax * x * e' * P * B);
dKr = transpose(gammar * r * e' * P * B);

dKx = reshape(dKx, [6 1]);      % Conversion to get compatible with vector
dKr = reshape(dKr, [4 1]);

dy = [dx; dxm; dKx; dKr];

end
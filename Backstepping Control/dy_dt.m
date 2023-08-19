%%  dy/dt

function y_dot = dy_dt(J,K,~,y)

d = y(1:3);
w = y(4:6);

F = eye(3) + d*d' + S(d);

tau = control(J,K,d,w);

d_dot = 1/2*F*w;                        % Equation of d_dot
w_dot = pinv(J)*(tau - S(w)*J*w);       % Equation of w_dot

y_dot = [d_dot; w_dot];
end
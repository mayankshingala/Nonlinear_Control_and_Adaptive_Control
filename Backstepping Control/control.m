%%  Control law

function tau = control(J,K,d,w)

F = eye(3) + d*d' + S(d);
tau = -0.5*F*d - 0.5*J*K*F*w + S(w)*J*w - K*(w+K*d);

end
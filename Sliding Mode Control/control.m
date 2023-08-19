%% control

function u = control(mc,m,l,g,a,c,k1,k2,y)

x1 = y(1);
x2 = y(2);

denom = l*(4/3 - m*cos(x1)^2/(mc+m));
fx = (g*sin(x1)-m*l*x2*x2*cos(x1)*sin(x1)/(mc+m))/denom;
gx = cos(x1)/(mc+m)/denom;

s = x2 + c*x1;
u = -(1/gx)*(k1*abs(s)^a*sat(s) + k2*sat(s) + fx + c*x2);

end
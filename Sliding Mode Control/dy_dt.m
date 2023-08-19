%% dy_dt

function dy = dy_dt(mc,m,l,g,a,c,k1,k2,t,y)

x1 = y(1);
x2 = y(2);

denom = l*(4/3 - m*cos(x1)^2/(mc+m));       % denominator

fx = (g*sin(x1) - m*l*x2*x2*cos(x1)*sin(x1)/(mc+m))/denom;
gx = cos(x1)/(mc+m)/denom;

u = control(mc,m,l,g,a,c,k1,k2,y);
d = -0.1 + 0.2*sin(0.5*t);

dx1 = x2;
dx2 = fx +gx*u +d;

dy = [dx1; dx2];
end
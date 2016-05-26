function dy = pendulum(t,y)

%system of 4 differential equations 
%(for theta1, theta2, and their derivatives)
dy = zeros(4,1);

%u = angle
%v = angular velocity
u1 = y(1);
v1 = y(2);
u2 = y(3);
v2 = y(4);

%length of pendulum arms
%masses, and gravity
L1 = 1;
L2 = 2;
m1 = 2;
m2 = 1;
g = 9.8;

%The system itself is rather messy
a = (m1+m2)*L1;
b = m2*L2*cos(u1-v1);
c = m2*L1*cos(u1-v1);
d = m2*L2;
e = -m2*L2*v2^2*sin(u1-v1)-g*(m1+m2)*sin(u1);
f = m2*L1*u2^2*sin(u1-v1)-m2*g*sin(v1);

%based on all the intermediate computations above
%this is the system:
dy(1) = u2;
dy(2) = v2;
dy(3) = (e*d-b*f)/(a*d-c*b);
dy(4) = (a*f-c*e)/(a*d-c*b);

end
[t Y] = ode45(@pendulum, [0 200], [1.5 3 0 0]);

L1 = 1;
L2 = 2;
%position of first arm
x1 = L1*sin(Y(:,1));
y1 = -L1*cos(Y(:,1));
%position of 2nd arm
x2 = L1*sin(Y(:,1))+L2*sin(Y(:,2));
y2 = -L1*cos(Y(:,1))-L2*cos(Y(:,2));

%plot(x1, y1);
%hold
plot(x2, y2);
N = 25; %number of different IC's we will use
x = linspace(0,8,N); %x is an array of the initial conditions we will use
ylim([0 8])
hold on %hold all plots on current axes


yp = @(t, y) (1/2)*y*(1 - y/9) - y^2/(1+y^2);
ex = @(t) t;
for i = 1:N %solve IVP N times, each with different IC
    [ w, s ] = rk4(x(i), 0, 15, 0.1, yp, ex); %produce plot of solution starting with IC x(i)
    plot(0:0.1:15, w);
end
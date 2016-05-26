function [tf_err] = taylor2(t0,y0,tf,h)
% Run Taylor's method to solve the following IVP:
%
% y'(t) = f(t,y)    on t0 < t < tf
% y(t0) = y0
% 
% Define the ODE within this function
% Input: t0 = initial time
% Input: y0 = initial function value
% Input: tf = final time to solve ODE
% Input: h  = spacing in time mesh
% Output: tf_err = error at final step

% Define the function from the ODE
f = @(t,y) cos(t).*y;

% Define the exact solution (if known)
exact = @(t) exp(sin(t));

% Establish time mesh
t = t0:h:tf;

% Set up the solution vector
y = zeros(size(t));
n = length(t)-1;    % number of intervals

y(1) = y0;  % Define the initial condition

fp = @(t,y) -sin(t)*y + cos(t).^2 * y;

for i = 1:n
    y(i+1) = y(i) + h*f(t(i),y(i)) + h.^2/2*fp(t(i),y(i));
end

figure
plot(t,y,'go-','Linewidth',3);
xlabel('t');
ylabel('y(t)');
title('Numerical solution from Euler''s method');
set(gca,'FontSize',16);

figure
hold on;
plot(t,y,'go-','Linewidth',3);
plot(t,exact(t),'k-','Linewidth',3);
xlabel('t');
ylabel('y(t)');
title('Euler''s method vs Exact solution');
legend({'Numerical solution','Exact solution'},'Location','NorthWest');
set(gca,'FontSize',16);

figure;
plot(t,abs(exact(t)-y),'ro-','Linewidth',3);
xlabel('t');
ylabel('Error');
title('Error from Eulers''s method');
set(gca,'FontSize',16);

% Determine error at last step
tf_err = abs(exact(tf)-y(end));

end




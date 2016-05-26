function plotlsq( xs, ys )
%Plot lsq points with line

plot(xs, ys, '.', 'MarkerSize', 24);
hold
[m, b] = lsq(xs, ys);
f = @(x) m * x + b;
plot(min(xs):max(xs), f(min(xs):max(xs)), 'r-', 'LineWidth', 2.4);

end


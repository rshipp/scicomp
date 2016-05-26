function [ rs ] = rsq( xs, ys )
%Find R^2 for lsq

[m, b] = lsq(xs, ys);
f = @(x) m * x + b;
rs = 1 - (sum((ys-f(xs)).^2)/sum((ys-mean(ys)).^2));

end


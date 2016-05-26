function [ a, b ] = lsq( xs, ys )
%Least squares approx.

m = length(xs);
d = (m + 1)*sum(xs.^2) - sum(xs)^2;
a = (1/d)*((m+1)*sum(xs.*ys) - (sum(xs)*sum(ys)));
b = (1/d)*(sum(xs.^2)*sum(ys) - sum(xs)*sum(xs.*ys));

end


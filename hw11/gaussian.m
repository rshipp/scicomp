function [ sum ] = gaussian( n, a, b, f )
%Gaussian Quadrature implementation.
[x w] = gaussquad(n, a, b);

sum = 0;
for i=1:n
    sum = sum + w(i) * f(x(i));
end

end


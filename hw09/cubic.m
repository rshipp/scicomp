function [ Sx ] = cubic( x, y, x0 )
%

%x = [0.06 0.47 1.01 1.50 2.05 2.53 2.99 3.44];
%y = [1.0499 1.3274 1.3588 1.2550 1.6322 2.5523 3.4462 3.6684];
%x0 = ;

n = length(x);

% Preallocate arrays
h = zeros(n-1,1);
A = zeros(n);
RHS = zeros(n, 1);
a = y;
b = zeros(n-1,1);
d = zeros(n-1,1);

% Fill in an array for h
for i=1:n-1
    h(i) = x(i+1) - x(i);
end

% Set A(1,1) and A(n,n)
A(1,1) = 1;
A(n,n) = 1;

% Fill in the matrix A and the right hand side vector RHS
for i=2:n-1
    A(i, i-1) = 1/(x(i) - x(i-1));
    A(i, i) = 2 * (1/(x(i) - x(i-1)) + 1/(x(i+1) - x(i))) ;
    A(i, i+1) = 1/(x(i+1) - x(i));
    
    RHS(i) = 3 * ( (y(i)-y(i-1))/((x(i) - x(i-1))*(x(i) - x(i-1))) +  (y(i+1)-y(i))/ ((x(i+1) - x(i))*(x(i+1) - x(i))) );
end

% Backslash solve for c
c = A\RHS;

% Use c to solve b and d
for i=1:n-1
   d(i) = (c(i+1) - c(i))/(3*h(i));
   b(i) = (a(i+1) - a(i))/h(i) - (h(i)/3)*(2*c(i) + c(i+1));
end

% Evaluate spline interpolant
i=1;
while ~ ((x(i) < x0) && (x0 < x(i+1)));
    i = i+1;
end
Sx = a(i) + b(i)*(x0 - x(i)) + c(i)*(x0 - x(i))^2 + d(i)*(x0 - x(i))^3;

end


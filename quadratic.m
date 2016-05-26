% Lab 01-22 question 3
function [ x1, x2 ] = quadratic(a,b,c)
% Find the roots of a quadratic equation.
% y = ax^2 + bx + c
d = disc(a,b,c);
x1 = (-b + d) / (2*a);
x2 = (-b - d) / (2*a);
end
function dis = disc(a,b,c)
% Calculate the discriminant of a quadratic.
% y = ax^2 + bx + c
dis = b^2 - 4*a*c;
end
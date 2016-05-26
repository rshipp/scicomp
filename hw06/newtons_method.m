% ============================================================================
% Newton's Method
% --------------------
%
% PURPOSE:  Use Newton's Method to approximate roots of functions
%
% INPUT VARIABLES:
%                  f : inline function,
%                  p0 : initial approximation 0,
%                  p1 : initial approximation 1,
%                  n_max : max # of iterations,
%                  tolerance : (optional) default is eps
%
% SAMPLE INPUT:
%                   f = inline('2*sin(x) - x');
%                   p0 = 1; p1 = 1.1;
%                   n_max = 100; tolerance = 1e-5;
%
% ============================================================================
function [ solution ] = newtons_method( f, p0, p1, n_max, tolerance )

% Use eps if tolerance is not defined
if ~exist('tolerance')
    tolerance = eps;
end

i = 2;
q0 = f(p0);
q1 = f(p1);

while i <= n_max
    p = p1 - q1*(p1 - p0)/(q1 - q0);
    if abs(p - p1) < tolerance
        solution = sprintf('>> Root = %f\n', p);
        disp(solution);
        break
    end

    i = i + 1;
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
end

% If root approximation not found, display error
if i > n_max
    err = sprintf('>> Newton''s Method Failed After  %d  iterations.\n', n_max);
    disp(err);
end


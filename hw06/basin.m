function [ a ] = basin(  )
%q6

f = @(x) x^3 - 2*x^2 - 11*x + 12;
fp = @(x) 3*x^2 - 4*x - 11;

x = linspace(-3, 4, 1000);
p = [ ];

for i=1:1000
    p = [p, newton_nonsym(f, fp, x(i), 100, 10e-8)];
end

plot(x, p, '.')

end


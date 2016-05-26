function [ T ] = trap( f, a, b, n )
%Trapezoid rule

h = (b-a)/n;

for x = a:h:b
   if x == a
      T = 0.5 * f(x);
   elseif x == b
      T = T + 0.5 * f(x);
   else
      T = T + f(x);
   end
end
T = h * T;

end


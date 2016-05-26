function [ wf ] = rkmidpoint( w0, t0, tf, h, f )
%Runge–Kutta midpoint implementation

w = zeros(1, length(t0:h:tf));
t = t0:h:tf;

w(1) = w0;

for i=2:length(t0:h:tf)
   w(i) = w(i-1) + h * f(t(i-1) + h/2, w(i-1) + (h/2) * f(t(i-1), w(i-1)));
end

wf = w(length(w));

end


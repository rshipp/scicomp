function [ w, s ] = rk4( w0, t0, tf, h, f, exact )
%RK4 implementation
%return [ w, s ] for rk4plot

w = zeros(1, length(t0:h:tf));
e = zeros(1, length(t0:h:tf));
s = zeros(1, length(t0:h:tf));
t = t0:h:tf;

w(1) = w0;

for i=2:length(t0:h:tf)
    k1 = f(t(i-1), w(i-1));
    k2 = f(t(i-1) + h/2, w(i-1) + (h/2)*k1);
    k3 = f(t(i-1) + h/2, w(i-1) + (h/2)*k2);
    k4 = f(t(i-1) + h, w(i-1) + h*k3);
    w(i) = w(i-1) + (h/6) * (k1 + 2*k2 + 2*k3 + k4);
    s(i) = exact(t(i));
    e(i) = abs(s(i) - w(i));
end

wf = w(length(w));
ef = e(length(e));

end


function rk4plot( w0, t0, tf, h, f, exact )
%Plot rk4 approx alongside actual solution

[w, s] = rk4(w0, t0, tf, h, f, exact);
plot(t0:h:tf, w, 'g');
%hold;
%plot(t0:h:tf, s, 'b');

end


function eulersplot( yp, w0, h, a, b, y )
%Euler's plot against actual
tt = a:h:b;
hold;
plot(tt, y(tt), '-');
plot(tt, eulers(yp, w0, h, a, b), ':');

end


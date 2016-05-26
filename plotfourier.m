function plotfourier( f, xmin, xmax )
%plot f3, f5, f10

[f3, f5, f10] = fourier(f);
%plot(xmin:xmax, f3(xmin:xmax), 'r', 'LineWidth', 2.4);
%hold
plot(xmin:0.1:xmax, f10(xmin:0.1:xmax), 'b', 'LineWidth', 2.4);
%plot(xmin:xmax, f10(xmin:xmax), 'b--', 'LineWidth', 2.4);


end


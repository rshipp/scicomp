function [ ww ] = eulers( yp, w0, h, a, b )
%Euler's algorithm implementation
tt = a:h:b;
ww = zeros(1,length(tt));
ww(1) = w0;

for i=2:length(tt)
   ww(i) = ww(i-1) + yp(tt(i-1), ww(i-1)) * h;
end

end


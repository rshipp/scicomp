function [ p, i ] = newton( f, p0, max_n, delta )
%Implementation of Newton's method

fp = diff(f);

p = p0;

i = 0;
while i < max_n
    i = i + 1;
    pl = p;
    p = pl - f(pl)/fp(pl);
    if abs(p - pl) < delta
        break
    end

end

p = double(p);

end


function [ p ] = newton_nonsym( f, fp, p0, max_n, delta )
%Implementation of Newton's method

p = p0;
pa = [ ];

i = 0;
while i < max_n
    pa = [ pa, p ];
    i = i + 1;
    pl = p;
    p = pl - f(pl)/fp(pl);
    if abs(p - pl) < delta
        break
    end

end

pa = abs(pa - p);

end


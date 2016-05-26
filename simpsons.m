function [ S ] = simpsons( a, b, xf )
%Simpson's rule implementation for discrete points

h = abs(a-b)/length(xf);
i = 0;
for x=a:h:b-1
    i = i + 1;
    if x == a
        S = xf(i);
    elseif x == b
        S = S + xf(i)
    elseif mod(i, 2) == 0
        S = S + 4*xf(i);
    else
        S = S + 2*xf(i);
    end
end
S = (h/3) * S;

end


function [ S, Ss, n ] = simpsons_f( a, b, f, exact, eps )
%Simpson's rule implementation for functions

% ceiling at n=10
for n=2:2:640
    h = abs(a-b)/n;
    i = 0;
    S = 0;
    Ss = '';
    for x=a:h:b
        i = i + 1;
        if x == a
            S = f(x);
            Ss = strcat('f(', num2str(x), ') ');
        elseif x == b
            S = S + f(x);
            Ss = strcat(Ss, ' + f(', num2str(x), ') ');
        elseif mod(i, 2) == 0
            S = S + 4*f(x);
            Ss = strcat(Ss, ' + 4*f(', num2str(x), ') ');
        else
            S = S + 2*f(x);
            Ss = strcat(Ss, ' + 2*f(', num2str(x), ') ');
        end
    end
    S = (h/3) * S;
    Ss = strcat('(', num2str(h), '/3) * (', Ss, ')');
    if abs(S-exact) <= eps
        break
    end
end

end


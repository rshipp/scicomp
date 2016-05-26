function [ px ] = newton_systems( f, Df, px, max_n, delta )
%Implementation of Newton's method for systems

%f = inline('[x(1)+x(2)+x(3)-3; x(1)^2+x(2)^2+x(3)^2-5; e^x(1)+x(1)*x(2)-x(1)*x(3)-1]')
%Df = inline('[1, 1, 1 ;  2*x(1), 2*x(2), 2*x(3); e^(x(1))+x(2)-x(3), x(1), -x(1)]');
%px = [.5;.5]

for i = 1:max_n
    dx = -Df(px)\f(px);
    px = px + dx;
    
    if abs(dx) < delta
        break
    end

end

end


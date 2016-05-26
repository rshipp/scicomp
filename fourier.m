function [ f3, f5, f10 ] = fourier( f )
%fourier approx


q = integral(f, -pi, pi);
a0 = (1/pi) * q;

%sum = 0;
for k=1:10
    fc = @(x) f(x) .* cos(k*x);
    fs = @(x) f(x) .* sin(k*x);
    ak(k) = (1/pi) * integral(fc, -pi, pi);
    bk(k) = (1/pi) * integral(fs, -pi, pi);
    
    %sum = sum + ak*cos(k*x) + bk*sin(k*x);

    %if k == 3
    %    f3 = a0/2 + sum;
    %elseif k == 5
    %    f5 = a0/2 + sum;
    %end
end
%f10 = a0/2 + sum;

f3 = @(x) a0/2 + (ak(1).*cos(1.*x) + bk(1).*sin(1.*x)) + (ak(2).*cos(2.*x) + bk(2).*sin(2.*x)) + (ak(3).*cos(3.*x) + bk(3).*sin(3.*x));
f5 = @(x) a0/2 + (ak(1).*cos(1.*x) + bk(1).*sin(1.*x)) + (ak(2).*cos(2.*x) + bk(2).*sin(2.*x)) + (ak(3).*cos(3.*x) + bk(3).*sin(3.*x)) + (ak(4).*cos(4.*x) + bk(4).*sin(4.*x)) + (ak(5).*cos(5.*x) + bk(5).*sin(5.*x));
f10 = @(x) a0/2 + (ak(1).*cos(1.*x) + bk(1).*sin(1.*x)) + (ak(2).*cos(2.*x) + bk(2).*sin(2.*x)) + (ak(3).*cos(3.*x) + bk(3).*sin(3.*x)) + (ak(4).*cos(4.*x) + bk(4).*sin(4.*x)) + (ak(5).*cos(5.*x) + bk(5).*sin(5.*x)) + (ak(6).*cos(6.*x) + bk(6).*sin(6.*x)) + (ak(7).*cos(7.*x) + bk(7).*sin(7.*x)) + (ak(8).*cos(8.*x) + bk(8).*sin(8.*x)) + (ak(9).*cos(9.*x) + bk(9).*sin(9.*x)) + (ak(10).*cos(10.*x) + bk(10).*sin(10.*x));

end

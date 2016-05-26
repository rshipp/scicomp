function [ t, w ] = rk45( a, t0, tf, f, h, ep )
%RK Fehlberg (RK45) implementation

hmin = 0.01;
hmax = 0.5;
TEST = 1;
i = 1;
%h = hmax;
w = [ a ];
t = [ t0 ];

%for i=1:10

while TEST == 1
    k1 = h * f(t(i), w(i))
    k2 = h * f(t(i) + h/4, w(i) + k1/4)
    k3 = h * f(t(i) + 3*h/8, w(i) + k1*3/32 + k2*9/32)
    k4 = h * f(t(i) + 12*h/13, w(i) + k1*1932/2197 - k2*7200/2197 + k3*7296/2197)
    k5 = h * f(t(i) + h, w(i) + k1*439/216 - 8*k2 + k3*3680/513 - k4*845/4104)
    k6 = h * f(t(i) + h/2, w(i) - k1*8/27 + 2*k2 - k3*3544/2565 + k4*1859/4104 - k5*11/40)
    
    wtemp = w(i) + k1*25/216 + k3*1408/2565 + k4*2197/4104 - k5/5
    wstemp = w(i) + k1*16/135 + k3*6656/12825 + k4*28561/56430 - k5*9/50 + k6*2/55
    R = (1/h)*abs(wstemp - wtemp)
    sig = (ep/R)^(1/4)
    
    if R < ep
        t(i+1) = t(i) + h
        w(i+1) = wtemp
        %t = cat(2, t, t(i) + h);
        %w = cat(2, w, wtemp);
        i = i + 1
        display('accept')
    else
        display('reject')
    end
    
    if sig <= 0.1
        h = 0.1*h
    elseif sig >= 4
        h = 4*h
    else
        h = sig*h
    end
    
    if h > hmax
        h = hmax;
    end
    
    if t(i) >= tf
        TEST = 0;
    elseif t(i) + h > tf
        h = tf - t(i);
    elseif h < hmin
        TEST = 0;
        warning('Method does not converge because minimum h is exceeded');
    end
    pause
end

end


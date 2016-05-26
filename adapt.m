function s = adapt(a,b,epsilon)

%uses adaptive quadrature scheme to integrate from 
%a to b with tolerance epsilon


%The following commands return a plot of 
% the nodes on the x-axis (blue +)
% the integrand (cyan line)
% the y-values of the nodes (red +)
%The plotting slows the code down. Comment these out when speed needed
hold on
plot(a,0,'+')
plot(b,0,'+')
plot(a,fun(a),'r+')
plot(b,fun(b),'r+')
plot((a+b)/2,0,'+');
plot((a+b)/2,0,'r+');
plotty(a,b,100)

h = (b-a)/2;

% first level Simpson approx from a to b
s1 = h*(fun(a)+4*fun(a+h)+fun(b))/3;

h2 = h/2;

% second level Simp approx
s = h2*(fun(a)+ 4*fun(a+h2) + 2*fun(a+h) + 4*fun(b-h2) + fun(b))/3;

%difference in two approximations
diff = abs(s1-s);

%if approx is not accepted, divide interval in half
%and repeat process on smaller intervals
%we could use 10*epsilon instead of 15*eps just to have a bit of a cushion
if diff > 15*epsilon
    display 'going further';
    m = (a+b)/2;
    s = adapt(a,m,epsilon/2)+adapt(m,b,epsilon/2);
else
    display 'using second level';
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function s = plotty(a,b,M)

x = linspace(a,b,M);
for i = 1:M
    y(i) = fun(x(i));
end

plot(x,y,'c')

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function y = fun(x)

y= log(x) * sin(x); %(1/x) * sin(1/x);

end

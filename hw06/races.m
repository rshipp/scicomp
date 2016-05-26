function s = races(N)
%N =number of times to execute

f = @(x) cos(x)^2 - x;
fp = @(x) -2*sin(x)*cos(x) - 1;

tic
for i=1:N
 newton_nonsym(f, fp, 1, 100, 10e-6);
end
toc

f = @(x) cos(x)^2 - x;
for i=1:N
 fzero(f,1);
end
toc

end
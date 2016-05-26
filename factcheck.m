function n = factcheck(M)
%Lab 01-29 question 2
%M (input) is some large number
%n (output) is the smallest integer such that n! > M
n = 0;
nfac = 0;
while nfac <= M
    n = n + 1;
    nfac = factorial(n);
end

end
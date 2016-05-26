function [ ratios ] = golden( n )
% Lab 01-25 question 2
entries = fib(n);
for i = 1:n-1
    ratios(i) = entries(i+1) / entries(i);
end

end
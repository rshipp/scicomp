function [ terms ] = fib( n )
% Lab 01-25 question 1
if n == 1
    terms = 1;
elseif n == 2
    terms = [ 1, 1 ];
elseif n > 2
    terms = [ 1, 1 ];
    for i = 3:n
        terms(i) = terms(i-1) + terms(i-2);
    end
else
    terms = [];
end
   
end


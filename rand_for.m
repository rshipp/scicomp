function [ avg ] = rand_avg( n )
% Lab 01-25 question 4
arr = randi(10,n,1);
sum = 0;
for i = 1:n
   sum = sum + arr(i);
end
avg = sum / n;

end


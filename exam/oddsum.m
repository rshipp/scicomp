function [ sum ] = oddsum( n )
%Exam q1: sum of first n odd numbers
sum = 0;
for i = drange(1:2*n)
   if mod(i,2) == 1
      sum = sum + i; 
   end
end

end


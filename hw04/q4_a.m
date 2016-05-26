function [ iterations ] = q4_a( n )
%HW4 Q4 a
iterations = 0;
while n ~= 1
   iterations = iterations + 1;
   if mod(n,2) == 0
       n = n/2;
   else
       n = n*3 + 1;
   end
end

end


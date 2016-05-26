function [ num, steps ] = q4_b(  )
%HW4 Q4 b
num = [ ];
steps = [ ];
for i = drange(1,10000)
  num = cat(2,num,i);
  steps = cat(2,steps,q4_a(i));
end

end


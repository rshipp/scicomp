function [ avg ] = grade( hw, tests )
%Exam q2: weighted average
hw_final = sort(hw);
hw_final([1 2]) = [];
hw_avg = mean(hw_final);

tests_final = sort(tests);
tests_final(1) = [];
tests_avg = mean(tests_final);

avg = hw_avg*0.2 + tests_avg*0.8;

end


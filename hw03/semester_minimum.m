function [ gpa ] = semester_minimum( current_gpa, minimum_gpa, earned_credits, current_credits )
%HW #3, Q2: Minimum semester GPA
gpa = (current_credits * minimum_gpa + earned_credits * (minimum_gpa - current_gpa))/current_credits;

end


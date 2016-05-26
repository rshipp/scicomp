function [ amount ] = money_earned( hours )
%Lab 01-29 question 1
amount = 25*min(hours,40) + 25*1.5*max(hours-40,0);

end


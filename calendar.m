function [ days ] = calendar( m, d )
%Lab 01-29 question 3
%Assume the year is not a leap year; 2015 is not.
days = caldiff([datetime(2015,1,1),datetime(2015,m,d)], 'days')+caldays(1);

end


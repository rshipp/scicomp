function [ days ] = q3( y, m, d )
%HW4 Q3
days = caldiff([datetime(1874,1,1),datetime(y,m,d)], 'days')+caldays(1);

end
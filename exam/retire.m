function [ yrs ] = retire( M )
%Exam q4: interest but no income
yrs = 0;
arry = [ 2040 ];
arrm = [ M ];

while M >= 50000
    M = M * 1.06 - 50000;
    yrs = yrs + 1;
    arry = [arry,2040+yrs];
    arrm = [arrm,M];
end

plot(arry,arrm);

end


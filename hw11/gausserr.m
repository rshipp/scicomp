function [ ee ] = gausserr( nn, a, b, f, exact )
%Compute gauss error for nn

ee = zeros(1, length(nn));
for i=1:length(nn)
    ee(i) = abs(exact - gaussian(nn(i),a,b,f));
end

end


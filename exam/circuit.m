function [ currents ] = circuit( V1, V2 )
%Exam q3: Kirchoff's law and circuits
R1 = 10;
R2 = 20;
R3 = 40;

A = [1, 1, -1; -R1, 0, -R3; 0, -R2, -R3];
currents = A\[0; -V1; -V2];

end


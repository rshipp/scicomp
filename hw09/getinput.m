clear all
clf;    % Clear plotting window
axis([0 10 0 10]);   % Create basic coordinate system for plot window
hold on   
% Initially, the list of points is empty.
x= [];
y= [];
n = 0;

% Give instructions
disp('Left mouse button picks points.')
disp('Right mouse button picks last point.')
% Stores integer value for which button is pressed
%    1 for left, 2 for middle, 3 for right
but = 1;  

% Loop, picking up the points, until user hits right mouse button
while but == 1
    [xi,yi,but] = ginput(1);    % Gets mouse click input
    plot(xi,yi,'ro');  % Plot point at mouse location - 'ro'=red circle
    n = n+1;
    x(n) = xi;      % Store x and y values
    y(n) = yi;
end

% Plot a linear approximation to data.
plot(x,y,'b-');   % 'b-' = blue line from data to data point
hold off
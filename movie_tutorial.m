% Create an animation in MATLAB using getframe

% We will animate the simple trajectory of projectile motion in 1D
%f = @(t) -1/2*9.8*t.^2 -4*t + 100;
%r = roots([-1/2*9.8, -4, 100]);
%t = linspace(0,r(2),100);
%y = f(t);

[t Y] = ode45(@pendulum, [0 30], [1.5 3 0 0]);

L1 = 1;
L2 = 2;
%position of first arm
x1 = L1*sin(Y(:,1));
y1 = -L1*cos(Y(:,1));
%position of 2nd arm
x2 = L1*sin(Y(:,1))+L2*sin(Y(:,2));
y2 = -L1*cos(Y(:,1))-L2*cos(Y(:,2));

%plot(x1, y1);
%hold
%plot(x2, y2);

% a boring, unanimated plot of the trajectory
%figure
%plot(t,y,'Linewidth',2);   % make the line thicker
%title('Projectile motion');
%xlabel('Time');
%ylabel('Height');
%set(gca,'Fontsize',16);   % set "get current axes" to fontsize 16

% We will animate it by capturing one point at a time
M = VideoWriter('Pendulum.avi');  % open a new video project
open(M);

figure;  % open up a new figure, the animation will take snapshots of this figure
for i = 1:length(t)
    cla;   % clear everything on the figure for a fresh frame
    hold on;
    %plot(t(1:i),y(1:i),'k','Linewidth',2); % plot up to current time 
    %plot(t(i),y(i),'r.','MarkerSize',20);   % also mark current point
    % * Create an array in x including the origin, the x-value of the first
    %   arm, and the x-value of the second arm at the current time only
    % * Create another array in y including the origin, the y-value of the
    %   first arm, and the y-value of the second arm at the current time only.
    % * Plot these arrays against each other.
    plot([0, x1(i), x2(i)], [0, y1(i), y2(i)], 'o-', 'LineWidth', 3);
    % Plot the position of the second arm (that is x2 vs y2), using all the
    % previous frames up to the current frame.
    plot(x2(1:i), y2(1:i));
    
    title('Pendulum motion');
    xlabel('Time');
    ylabel('Height');
    set(gca,'Fontsize',16);   % set "get current axes" to fontsize 16
    axis([-3,3,-3,2]);  % set axis limits so the axes don't change
    hold off
    
    % Capture current frame and store into movie matrix
    frame = getframe(gcf);  % get current figure (includes axes info)
    writeVideo(M,frame);    % store it in the video M
end

close(M);  % needed so you can open your avi with other applications

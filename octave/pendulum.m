% Parameters
L = 1;
g = 9.81;
dt = 0.005;
tmax = 100;

theta = pi/6;
omega = 0;

% Set up the figure
hold on;
axis([-L L -L L]);
hline = line([0, L*sin(theta)], [0, -L*cos(theta)]);
hball = scatter(L*sin(theta), -L*cos(theta), 'filled');
set(hline, 'LineWidth', 2);
set(hball, 'SizeData', 50);

% Simulation loop
for t = 0:dt:tmax
    % Update the pendulum angle and angular velocity
    alpha = -g/L*sin(theta);
    omega = omega + alpha*dt;
    theta = theta + omega*dt;

    % Update the stick and the ball positions
    set(hline, 'XData', [0, L*sin(theta)]);
    set(hline, 'YData', [0, -L*cos(theta)]);
    set(hball, 'XData', L*sin(theta));
    set(hball, 'YData', -L*cos(theta));

    % Draw the updated figure
    drawnow;
end



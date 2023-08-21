% Create a UIFigure
fig = uifigure('Name', 'TUI Example', 'Position', [100, 100, 400, 400]);

% Create a UIAxes
ax = uiaxes(fig, 'Position', [50, 50, 300, 300]);

% Create a circle on the UIAxes
circle = uicircle(ax, 'Position', [150, 150, 20]);

% Define a callback function for mouse movement
function MouseMoveCallback(src, event)
    currentPoint = ax.CurrentPoint(1, 1:2);
    circle.Position(1:2) = currentPoint;
end

% Set the callback function for mouse movement
ax.WindowButtonMotionFcn = @MouseMoveCallback;

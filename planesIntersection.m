% Define the planes
syms x y z
plane1 = 6 - x - y;
plane2 = (14 - 3*x - 2*y)/2;

% Find the intersection point
intersection = solve(plane1 == plane2, [x, y, z]);

% Plot the planes and intersection point
[X, Y] = meshgrid(-5:0.1:5);
Z1 = eval(subs(plane1, [x, y], {X, Y}));
Z2 = eval(subs(plane2, [x, y], {X, Y}));
surf(X, Y, Z1, 'FaceAlpha', 0.5, 'EdgeColor', 'none');
hold on;
surf(X, Y, Z2, 'FaceAlpha', 0.5, 'EdgeColor', 'none');
plot3(intersection.x, intersection.y, intersection.z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Intersection of Two Planes');

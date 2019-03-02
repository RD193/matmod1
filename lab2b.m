t = -10:0.01:10;
figure
[X,Y,Z] = cylinder(t);
surf(X,Y,Z, 'edgecolor', 'none');
axis square
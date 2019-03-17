x = [0; 1; 0; 0;];
y = [0; 0; 1; 0;];
z = [0; 0; 0; 1;];
dts = [x.'; y.'; z.']
Ay = [cos(0.15) 0 sin(0.15); 0 1 0; -sin(0.15) 0 cos(0.15)];
Ax = [1 0 0; 0 cos(2.7) -sin(2.7); 0 sin(2.7) cos(2.7)];
Az = [cos(2.7) -sin(2.7) 0; sin(2.7) cos(2.7) 0; 0 0 1];

DT = delaunayTriangulation(x,y,z);
figure(1);
tetramesh(DT);
title('base');
xlabel('x')
ylabel('y')
zlabel('z')
grid on;
axis([0 1 0 1 0 1]);
axis('square');
dts = Ax*dts;
DT = delaunayTriangulation(dts(1, :).',dts(2, :).',dts(3, :).');
figure(2);
colormap(spring)
tetramesh(DT, 7);
title('Rotate x');
xlabel('x')
ylabel('y')
zlabel('z')
grid on;
axis([0 1 -1 1 -1 1]);
axis('square');
dts = Ay*dts;
DT = delaunayTriangulation(dts(1, :).',dts(2, :).',dts(3, :).');
figure(3);
colormap(summer)
tetramesh(DT, 3);
title('Rotate y');
xlabel('x')
ylabel('y')
zlabel('z')
grid on;
axis([-1 1 -1 0 -1 1]);
axis('square');
dts = Az*dts;
DT = delaunayTriangulation(dts(1, :).',dts(2, :).',dts(3, :).');
figure(4);
colormap(winter);
tetramesh(DT, 4);
title('Rotate z');
xlabel('x')
ylabel('y')
zlabel('z')
grid on;
axis([-1 1 0 1 -1 1]);
axis('square');
%plot(2,2,3), tr3 = tetramesh(DT);
%plot(2,2,4), tr4 = tetramesh(DT);

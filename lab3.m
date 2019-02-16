x = [0 1 2 3];
y = [0 0.5 2 1.5];
xi = [x(1):0.01:x(length(x))];
ynear = interp1(x,y,xi,'nearest');
yline = interp1(x,y,xi,'line');
ycubic = interp1(x,y,xi,'c');
yspline = interp1(x,y,xi,'spline');
plot(x, y, 'ko', xi, ynear, 'r', xi, yline, 'g', xi, ycubic, 'b', xi, yspline, 'y');
title("—пособы интерпол€ции");
legend({'data', 'nearest', 'line', 'cubic', 'spline'}, 'Location', 'southeast')
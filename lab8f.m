function [] = lab8f(a1,o1,a2,o2,phi)
x = @(t) a1*cos(o1*t + phi);
y = @(t) a2*cos(o2*t);
%M = zeros(1, 7500);
for k=1:360
    %figure(1);
    p1 = fplot(x,y,[0.02*k,0.02*k], 'ro');
    hold on;
    p2 = fplot(x,y,[0 k*0.02], 'b-');
    axis([-20 20 -20 20]);
    title(sprintf('%.2d%', o2/o1));
    hold off;
    M(k)=getframe();
    delete(p1);
    delete(p2);
end
movie(M,1,240)
end


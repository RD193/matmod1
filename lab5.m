u0 = [1;0.2];
figure(1);
options = odeset('OutputFcn', 'odephas2','MaxStep', 0.025);
[T,u] = ode45('f5', [0 2], u0, options);
grid;
title('Phas portrait');
xlabel('\ity');
ylabel('{\itx}');
figure(2);
plot(T,u(:,1),'r'); grid; 
hold on;
plot(T,u(:,2),'b-');
xlabel('\itt');
ylabel('{\ity},{\ity}\prime');
legend('y',"y'");
[x, y] = dsolve('Dx = x^3 - 2*x*(y^2)', 'Dy = 2*(x^2)*y -y^2', 'x(0)=1','y(0)=0.2');
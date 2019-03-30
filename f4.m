function [] = f4(x0,func)
X = x0-1:0.01:x0+1;
f = str2sym(func);
f0 = double(subs(f,'x',x0));
fx = double(subs(f,'x',X));
df = diff(f,'x',1);
dfx0 = double(subs(df,'x',x0));
tang = str2sym('a*x + b');
tangx = subs(tang,'x', X);
tangx = subs(tangx,'a', dfx0);
tangx = double(subs(tangx,'b', f0 - dfx0*x0));
hold on;
plot(X,fx);
plot(x0,f0, 'o');
plot(X,tangx);
hold off;
end


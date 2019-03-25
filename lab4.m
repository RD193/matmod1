X = 1:0.01:3;
f = X.*X.*cos(X);
id = find(y == 2*2*cos(2));
plot(X, f,'-p','MarkerIndices',[id]);
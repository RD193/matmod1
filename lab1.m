a = [1 2; 2 4];
b = [a, a.*5;transpose(a(:)).*2; transpose(a(:)).*3];
display(b)
b = [b(3:4,3:4),b(1:2,3:4);b(3:4,1:2),b(1:2,1:2)];
display(b)
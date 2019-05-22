u = 0:0.001:2*pi +0.001;
v = -0.5:0.01:0.5;
[U,V] = meshgrid(u,v);
h = surf(cos(U) + V.*cos(U./2).*cos(U),sin(U) + V.*cos(U./2).*sin(U),V.*sin(U./2));

colormap(gray)
material shiny
shading interp
lightangle(-45,-40)
h.FaceLighting = 'gouraud';
h.AmbientStrength = 0.6;
h.DiffuseStrength = 0.8;
h.SpecularStrength = 0.9;
h.SpecularExponent = 25;
h.BackFaceLighting = 'unlit';
axis([-1.5 1.5 -1.5 1.5 -1.5 1.5]);
for k=1:600
    rotate(h,[1 0 1], k/100);
    M(k) = getframe();
end
movie(M)

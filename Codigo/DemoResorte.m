clear all;
clc;
m = 8;
b = 0.4;
k = 1;
tmax = 5*pi;

[t,x,v] = Resorte(m,b,k,0,0,[0,tmax],@Fuerza);

f = zeros(size(t));
for a=1:length(t)
	f(a) = Fuerza(t(a));
end
figure;
hold on;
plot(t,f,'r-');
plot(t,x,'b-');
plot(t,v,'k-');
xlabel('t');
grid on;
legend('Fuerza','Deformación','Velocidad');
title('Héctor Garbisu MNC 2015');

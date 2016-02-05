clear all
clc

T = 2;
v = 20;
figure;
hold on;
for theta = 30:5:60
	[t,X] = TiroParabolico(T,v,theta);
	x = X(:,1); %pos x
	y = X(:,3); %pos y
	plot(x,y);
end

xlabel('x');
ylabel('y');
grid on
title('Héctor Garbisu MNC 2015');
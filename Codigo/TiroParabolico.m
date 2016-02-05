function [t,x] = TiroParabolico(T,v,theta)
	[t,x] = ode45(@proyectil,[0,T],[0,v*cosd(theta),0,v*sind(theta)]);
end

function dx = proyectil(t,x)
	g = 9.81;
	dx = zeros(4,1);
	dx(1,1) = x(2); %velocidad horizontal inicial
	dx(2,1) = 0;    %aceleraciónn horizontal nula
	dx(3,1) = x(4); %velocidad vertical inicial
	dx(4,1) = -g;   %acelaración vertical constante
end


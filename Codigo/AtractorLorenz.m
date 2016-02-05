function AtractorLorenz
% Lanza una simulación de Atractor de Lorenz
	%entre t=0 y t=30
	[t,X] = ode45(@LorenzFunction,[0,30],[1 1 1]);
	
	figure;
	hold on;
	plot(t,X(:,1),'b-');
	plot(t,X(:,2),'r-');
	plot(t,X(:,2),'k-');
	title('Atractor de Lorenz, Juan Méndez para MNC');
	grid on;
	
	figure;
	plot3(X(:,1),X(:,2),X(:,3),'b-');
	title('Héctor Garbisu MNC 2015');
	cameratoolbar;
end

function dX = LorenzFunction(t,X)
	a = 10;
	b = 28;
	c  = 8/3;
	%vecot columna para los resultados
	dX(1,1) = a*(X(2)-X(1));
	dX(2,1) = X(1).*(b-X(3))-X(2);
	dX(3,1) = X(1).*X(2) -c*X(3);
end


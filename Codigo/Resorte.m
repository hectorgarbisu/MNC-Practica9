function [t,x,v] = Resorte(m,r,k,x0,dx0,rango,f)
    %simula el modelo de un resorte. la fuerz exterior de una función
    [t,s] = ode45(@(u,v)sfunc(u,v,m,r,k,f),[rango(1),rango(2)],[x0;dx0]);
    % la primera columna es x1 la variable, la segunda la x2 s(:,2);
    x=s(:,1);
    v=s(:,2);
end

% sfunc es la funcion del sistema
function dx = sfunc(t,x,m,r,k,f)
	%debe ser una columna de valores
	dx(1,1) = x(2);
	dx(2,1) = (f(t)-(r)*x(2)-k*x(1))/m;
end

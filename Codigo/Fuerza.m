function f = Fuerza(t)
%Genera un pulso de fueza unitario entre t=1 y t=2;
	if t<1
		f = 0;
	elseif t<=2
		f = 1;
	else
		f= 0;
	end
end

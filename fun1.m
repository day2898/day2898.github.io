function [f_w] = fun1(e,d)
%Crea una función que se llame fun1 y reciba dos parametros y la función...
%debe regresar la evaluación,esta función debe trabajr con y . Debe mostrar
%su código en el reporte (sin ejecutar)
w = real(e);
a = real(d);
f_w=a/(a^2+w^2);

end


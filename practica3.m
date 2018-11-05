%% RPL03: Se�ales en tiempo continuo
%% PRACTICA 3
%
%
%%
% | *Unidad Profesional Interdisciplinaria en Ingenier�a y Tecnolog�as Avanzadas* |
%
%           | *Se�ales y Sistemas* |
%
%   INTEGRANTES
% * Fajardo Granados Dayra Gabriela
% * Ort�z Islas Jos� Manuel
% * Rodr�guez Castillo silvia
%
%   PROFESOR
% * Dr. Rafael Mart�nez Mart�nez
%
%   GRUPO
% * 2TV2
%
%   FECHA 
%
% 5 de Noviembre de 2018
%% OBJETIVOS
%
%
% # Manipulaci�n b�sica de MATLAB
% # Gr�ficas de se�ales reales y complejas continuas
% # Transformaci�n de se�ales continuas (escalamientos y traslaciones)
% # Calculo de energ�a y potencia de se�ales continuas
%
%% INTRODUCCION
%
%% Alternativas de software libre Octave y Python
%% Octave
% Octave o GNU Octave es un programa libre para realizar c�lculos num�ricos. MATLAB es considerado su equivalente comercial. Entre varias caracter�sticas que comparten se puede destacar que ambos ofrecen un int�rprete permitiendo ejecutar �rdenes en modo interactivo. N�tese que Octave no es un sistema de �lgebra computacional como podr�a ser Maxima, sino que usa un lenguaje que est� orientado al an�lisis num�rico.
% El proyecto fue creado alrededor del a�o 1988 pero con una finalidad diferente: Ser utilizado en un curso de dise�o de reactores qu�micos. Posteriormente en el a�o 1992, se decide extenderlo y comienza su desarrollo a cargo de John W. Eaton. La primera versi�n alpha fue lanzada el 4 de enero de 1993. Un a�o m�s tarde, el 17 de febrero de 1994 aparece la versi�n 1.0.
% Aqu� podemos  <https://www.gnu.org/software/octave/download.html
% Descargar> el software y aqu� podemos hacer <https://octave-online.net/
% uso> del sofware de manera online
%% Python
% Python es un lenguaje de programaci�n creado por Guido van Rossum a principios de los a�os 90 cuyo nombre est� inspirado en el grupo de c�micos ingleses �Monty Python�. Es un lenguaje similar a Perl, pero con una sintaxis muy limpia y que favorece un c�digo legible. B�sicamente, Python es un lenguaje de programaci�n de alto nivel, interpretado y multiprop�sito
% Python es open source, cualquiera puede contribuir a su desarrollo y divulgaci�n. Adem�s, no es necesario pagar ninguna licencia para distribuir software desarrollado con est� lenguaje. Hasta su int�rprete se distribuye de forma gratuita para diferentes plataformas
% Aqu� podemos  <https://www.python.org/downloads/
% Descargar> el software y aqu� podemos hacer <https://live.sympy.org/
% uso> del sofware de manera online
%% DESARROLLO
%
% # Crea una funci�n que se llame fun1 y reciba dos parametros $\omega$ y $a$ la funci�n debe regresar la evaluaci�n $F(\omega)=a/(a^2+\omega^2)$, esta funci�n debe trabajr con $a\in R$ y $t\in  R^n$. 
%
% *|fun1|*
%

function [f_w] = fun1(e,d)
%Crea una funci�n que se llame fun1 y reciba dos parametros y la funci�n...
%debe regresar la evaluaci�n,esta funci�n debe trabajr con y . Debe mostrar
%su c�digo en el reporte (sin ejecutar)
w = real(e);
a = real(d);
f_w=a/(a^2+w^2);

end

%%

% 6. Escriba una funci�n que se llame energia que reciba como argumento una funci�n (anonima o simbolica) y que regrese el calculo de la energ�a, para esto puede resultar �til investigar las instrucciones int , integral Se presupone utilizar el c�digo solo con funciones de energia. Muestre el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.3
%
% * |energia| * 
%
function [e_t] = energia(f)
syms t;
f_t=f;
e_t=int(f_t^2,-inf,inf);
end
%%
% 7. Escriba una funci�n que se llame potencia que reciba como argumento una funci�n (anonima o simbolica) y que regrese el calculo de la potencia para esto puede resultar �til investigar las instrucciones int , integral Se presupone utilizar el c�digo solo con funciones de potencia. Muestre el c�digo sin ejecutar, y posteriormente resuelva el problema 1.1.4
%
% * |potencia| * 
%
function [p_t] = potencia(f,T)
syms t;
f_t=f;
p_t=0.5*int(f_t^2,-T/2,T/2);
end
%%
%

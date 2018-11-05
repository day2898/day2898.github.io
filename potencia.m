function [p_t] = potencia(f,T)
syms t;
f_t=f;
p_t=0.5*int(f_t^2,-T/2,T/2);
end


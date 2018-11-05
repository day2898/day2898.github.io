function [e_t] = energia(f)
syms t;
f_t=f;
e_t=int(f_t^2,-inf,inf);
end


clc
clear all
close all 

t=linspace(-20,20,1010)
f_t=a2(t)
plot(t,f_t)
ylim([min(f_t)-0.5 max(f_t)+1])
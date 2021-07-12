

function [c,ceq] = constraints(x,limit,t_actual,y0,v_actual)

[~, conc] = ode45(@(t,y) model(t,y,x),t_actual,y0);
 v_ode = conc(2:end,4);

 c= ((-1)*v_ode)+limit;
ceq=[];
%  
 
end


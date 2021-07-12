function sol = fitness_function(x,y0,t_actual,v_actual)
[~, conc] = ode45(@(t,y) model(t,y,x),t_actual,y0);
v_ode = conc(:,4);
sol =sum((v_ode - v_actual).^2);



end
function dy = model(t,y,b)
%% This is the function that is used in ode45

% b(1) : beta
% b(2) : sigma
% b(3) : meu
% b(4) : omega
% b(5) : p
% b(6) : c

dy(1) = -b(1)*y(4)*y(1); % T1

dy(2) = 10^4 - b(1)*y(4)*y(2); % T2

% This is the part euivalent to die.m
if(t >= b(3))
    dy(3) = b(1)*y(4)*(y(1) + y(2)) - (2*exp(b(2)*(t-b(3))) + b(4)*y(2))*y(3); % I
else
    dy(3) = b(1)*y(4)*(y(1) + y(2)) - (2 + b(4)*y(2))*y(3); % I
end
%

dy(4) = b(5)*y(3) - b(6)*y(4); % V

dy = dy';

end

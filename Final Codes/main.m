%%
%% CURVE FITTING BY GENERATING RANDOM VARIABLES AS INITIAL GUESSES FOR PATIENT 1

%%
%% This is the main function


subtit= sprintf('PATIENT 1');


%%
%% Parameters to be fitted

%Patient 1
beta = 1.1*10^(-5);
p = 940;
c = 50;
omega = 1.9*10^(-4);
sigma = 0.13;
meu = 10;

% %Patient 2
% beta = 2.2*10^(-6);
% p = 4.8*10^(3);
% c = 35;
% omega = 3*10^(-4);
% sigma = 0.01;
% meu = 8;

% %Patient 3
% beta = 9.8*10^(-6);
% p = 1.3*10^(3);
% c = 58;
% omega = 2*10^(-4);
% sigma = 0.04;
% meu = 9;


% %Patient 4
% beta = 4.5*10^(-5);
% p = 88;
% c = 5;
% omega = 0.001;
% sigma = 0.001;
% meu = 6;


% %Patient 7
% beta = 9.9*10^(-7);
% p =  1.08*10^(4);
% c = 48;
% omega = 2.1*10^(-4);
% sigma = 10^(-4);
% meu = 9;


% %Patient 8
% beta = 7*10^(-6);
% p = 3100;
% c = 118;
% omega = 1.5*10^(-4);
% sigma = 0.07;
% meu = 6;


% %Patient 10
% beta = 1.8*10^(-6);
% p = 4.9*10^(3);
% c = 3.5;
% omega = 3*10^(-3);
% sigma = 0;
% meu = 15;


% %Patient 14
% beta = 5.7*10^(-6);
% p = 800;
% c = 10;
% omega = 5.3*10^(-4);
% sigma = 0;
% meu = 6;


%%
%% The vector b stores all fitting parameters
b(1) = beta;
b(2) = sigma;
b(3) = meu;
b(4) = omega;
b(5) = p;
b(6) = c;
%%
%% Initial Conditions
T1 = 60000;
T2 = 0;
I = 0;
V = 0.0001;

y0 = [T1;T2;I;V]; % Storing Initial Conditions
%%
%% Solving system of ODEs using ode45
t_start = 0;
t_end = 30;
t_span = [t_start:t_end]; 
[time, conc] = ode45(@(t,y) model(t,y,b),t_span,y0);
%%
%% Viral Load Data

%Patient 1
observations=[
4	79432823.4724
5	10000.0000
6	1.0000
7	15.8489
8	1412.5375
9	70.7946
10	501.1872
11	12.5893
12	100.0000
13	1.0000
14	1412.5375
15	1.0000
16	1.0000
17	1.0000
18	1.0000
19	1.0000
 20	1.0000
 21	1.0000
 22	1.0000
];



    
% Patient 2
% observations=[
%     3	49203953.57
% 4	1324341.535
% 5	86297.85478
% 6	35563.13186
% 7	17021.58508
% 8	25.70395783
% 9	457.0881896
% 10	83.75292821
% 11	1
% 12	1
% 13	14.25607594
% 14	16.51961798
% 15	1
% 16	1
%  17	1
% 18	1
% 19	1
% 20	1
% ];


% % %Patient 3
% observations=[
%     3	1640589.773
% 4	151008.0154
% 5	18323.14422
% 6	6683.439176
% 7	4216.965034
% 8	269.1534804
% 9	62.08690342
% 10	1
% 11	47.09773264
% 12	35.80964371
% 13	186.6379691
% 14	1
% 15	1
% 16	3.962780343
% 17	1
% 18	14.28893959
% 19	39.26449354
% 20	24.77422058
% 21	1
% 22	1
% ];

% 
% %Patient 4
% observations=[
%     4	2371373.706
% 5	104712.8548
% 6	739.6052751
% 7	4623.810214
% 8	29.78516429
% 9	27.16439269
% 10	1
% 11	1
% 12	22.64644308
% 13	42.95364268
% 14	1
% 15	1
% 16	1
% 17	1
% 18	1
% 19	1
% ];


% %Patient 7
% observations=[
%     4	582103217.8
% 5	453941.6167
% 6	287078.0582
% 7	511.6818355
% 8	87096.359
% 9	1849.268619
% 10	887.156012
% 11	18.83649089
% 12	1.202264435
% 13	35.80964371
% 14	68.07693587
% 15	39.26449354
% 16	35.80964371
% 17	39.26449354
% 18	1
% 19	62.08690342
% 20	1
% 21	1
% 22	1
% 23	1
% 24	1
% 25	1
% 26	1
% 27	1
% ];


% %Patient 8
% observations= [
% 6	12589.25412
% 7	6309.573445
% 8	4466.835922
% 9	2818.382931
% 10	39.81071706
% 11	125.8925412
% 12	89.12509381
% 13	39.81071706
% 14	316.227766
% 15	63.09573445
% 16	1
% 17	1
% 18	15.84893192
% 19	39.81071706
% 20	1
% 21	1
% ];

 
% %Patient 10
% observations=[
%     4	787045.7897
% 5	199067.3339
% 6	66221.65037
% 7	15240.52754
% 8	4216.965034
% 9	3206.269325
% 10	58748935.25
% 11	497737.085
% 12	5559.042573
% 13	16710.90614
% 14	2432.204009
% 15	22029.26463
% 16	170.2158508
% 17	809.0958992
% 18	10.86425624
% 19	42.95364268
% 20	674.5280277
% 21	32.65878322
% 22	1.318256739
% 23	1
% 24	18.83649089
% 25	1
% 26	15.6675107
% 27	1
% 28	1
% ];


% %Patient 14
% observations=[
%     2	13182.56739
% 3	131825.6739
% 4	144543.9771
% 5	208929.6131
% 6	63095.73445
% 7	83176.37711
% 8	208.9296131
% 9	75.8577575
% 10	1
% 11	20.89296131
% 12	10.96478196
% 13	1
% 14	1
% 15	1
% ];

%%
%%

t_actual = observations(:,1);
v_actua = [V;observations(:,2)];


%Case 1
%v_actual = filloutliers(v_actua,'clip','quartiles');

 %Case 2
threshold=[10 90];

 v_actual = filloutliers(v_actua,'clip','percentiles',threshold);



% count=0;
% 
% for j=1:length(v_actual)
%     if(v_actual(j)~= v_actua(j))
%         count=count+1;
%     end
% end
% 
% count





[time, conc_paper] = ode45(@(t,y) model(t,y,b),[0;t_actual],y0);

sol_rmse_paper = sum((conc_paper(:,4) - v_actual).^2);


er= sprintf('Error from the paper = %d \n',sol_rmse_paper);
disp(er);

options.Display = 'iter';
options.Algorithm = 'sqp';

%%
%%

%%Values of the parameters from the paper

% %Patient 1
b0 = [1.1*10^(-5);0.13;10;1.9*10^(-4);940;50];

% %Patient 2
% b0 = [2.2*10^(-6);0.01;8;3*10^(-4);4.8*10^(3);35];

% %Patient 3
% b0 = [9.8*10^(-6);0.04;9;2*10^(-4);1.3*10^(3);58];
% 
% %Patient 4
% b0 = [4.5*10^(-5);0.001;6;0.001;88;5];

% %Patient 7
% b0 = [9.9*10^(-7);0.0001;9;2.1*10^(-4);1.08*10^(4);48];

% %Patient 8
% b0 = [7*10^(-6);0.07;6;1.5*10^(-4);3100;118];

% %Patient 10
% b0 = [1.8*10^(-6);0;15;3*10^(-3);4.9*10^(3);3.5];

%Patient 14
% b0 = [5.7*10^(-6);0;6;5.3*10^(-4);800;10];




disp('Initial Values for Case 1:-');
Xi = sprintf('Beta: %d \nSigma: %d \nMeu: %d \nOmega: %d \np: %d \nc: %d\n\n',b0(1),b0(2),b0(3),b0(4),b0(5),b0(6));
disp(Xi);

%% 
%%
%% Ode Fitting 

% This limit signifies the inequality where all the log10 values
%must be greater than or equal to -2
limit=0.01;


[x,sol_rmse_fitted] = fmincon(@(x)fitness_function(x,y0,[0;t_actual],v_actual),b0,[],[],[],[],[10^(-8);0;6;10^(-5);10;0.5],[0.0001;0.5;15;0.01;10^5;300],@(x)constraints(x,limit,[0;t_actual],y0,v_actual),options);
[time, conc_fitted] = ode45(@(t,y) model(t,y,x),[0;t_actual],y0);           % We need it for the plot function

%%
disp('Final Value for Case 1 :-');
Xf = sprintf('Beta: %d \nSigma: %d \nMeu: %d \nOmega: %d \np: %d \nc: %d\n\n',x(1),x(2),x(3),x(4),x(5),x(6));
disp(Xf);

err0= sprintf('Error for Case 1 = %d ',sol_rmse_fitted);
disp(err0);

%Storing the Values properly in cells so that data can be observed in Excel
%easily
result{1,1}='Error';
result{1,2} ='Beta(initial)'; 
result{1,3} ='Beta(final)';
result{1,4} ='Sigma(initial)';
result{1,5} ='Sigma(final)';
result{1,6} = 'Meu(initial)';
result{1,7} = 'Meu(Final)';
result{1,8} = 'Omega(Initial)';
result{1,9} = 'Omega(Final)';
result{1,10} ='p (Initial)';
result{1,11} = 'p (Final)';
result{1,12} = 'c(Initial)';
result{1,13} = 'c(Final)';
result{1,14} = 'V values';

%Fitting data obtained for Case 1( using the actual value of parameters
%from the paper)
result{2,1} = sol_rmse_fitted; %Error
result{2,2} = b0(1); 
result{2,3} = x(1);
result{2,4} = b0(2);
result{2,5} = x(2);
result{2,6} = b0(3);
result{2,7} = x(3);
result{2,8} = b0(4);
result{2,9} = x(4);
result{2,10} = b0(5);
result{2,11} = x(5);
result{2,12} = b0(6);
result{2,13} = x(6);
result{2,14} = conc_fitted(:,4); %V values 

%%
%%

%Plotting the graph for Case 1

figure
xa=log10(conc_paper(:,4));
xa(xa<-2)=-2;
plot(time,xa,'r-')
hold on

xx=log10(conc_fitted(:,4));
xx(xx<-2)=-2;
xy=log10(v_actua);
xy(xy<-2)=-2;
plot(time,xx,'b-')
hold on
plot(time,xy,'g*')

title('Fitting for Case 1')
subtitle(subtit)

xlabel('Time(Days)') 
ylabel('log10 copies per ml')
legend('Using paper value','Fitted','Actual')

hold off
grid



%%
%% Generating random Variables for the initial guesses

bet= 10^(-8)+(0.0001-10^(-8)).*rand(1,60);
sigm= 0+(0.5-0).*rand(1,60);
me= randi([6 15],1,60); %We can only have integer values here
omeg= 10^(-5)+(0.01-10^(-5)).*rand(1,60);
pp= 10+(10^5-10).*rand(1,60);
cc= 0.5+(300-0.5).*rand(1,60);

rands=[ bet; sigm; me; omeg; pp; cc;];




 

%%
%% Fitting for different Initial Guesses ( Plots given at the end)

for r=1:1
    b0=rands(:,r);
    z=r+2;
 
i= sprintf('Initial Values for Case %d :-',r+1);
disp(i);
X0 = sprintf('Beta: %d \nSigma: %d \nMeu: %d \nOmega: %d \np: %d \nc: %d\n\n',b0(1),b0(2),b0(3),b0(4),b0(5),b0(6));
disp(X0);

[x,sol_rmse_fitted] = fmincon(@(x)fitness_function(x,y0,[0;t_actual],v_actual),b0,[],[],[],[],[10^(-8);0;6;10^(-5);10;0.5],[0.0001;0.5;15;0.01;10^5;300],@(x)constraints(x,limit,[0;t_actual],y0,v_actual),options);

[time, conc_fitted] = ode45(@(t,y) model(t,y,x),[0;t_actual],y0);           % We need it for the plot function

f= sprintf('Final Values for Case %d :-',r+1);
disp(f);
X1 = sprintf('Beta: %d \nSigma: %d \nMeu: %d \nOmega: %d \np: %d \nc: %d\n\n',x(1),x(2),x(3),x(4),x(5),x(6));
disp(X1);

err= sprintf('Error for Case %d = %d \n\n',r+1,sol_rmse_fitted);
disp(err);

%Storing the data obtained
result{z,1} = sol_rmse_fitted;
result{z,2} = b0(1);
result{z,3} = x(1);
result{z,4} = b0(2);
result{z,5} = x(2);
result{z,6} = b0(3);
result{z,7} = x(3);
result{z,8} = b0(4);
result{z,9} = x(4);
result{z,10} = b0(5);
result{z,11} = x(5);
result{z,12} = b0(6);
result{z,13} = x(6);
result{z,14} = conc_fitted(:,4);

t= sprintf('Fitting for Case %d',r+1);

%%

% Plots for each case

figure
xa=log10(conc_paper(:,4));
xa(xa<-2)=-2;
plot(time,xa,'r-')
hold on

xx=log10(conc_fitted(:,4));
xx(xx<-2)=-2;
xy=log10(v_actua);
xy(xy<-2)=-2;
plot(time,xx,'b-')
hold on 
plot(time,xy,'g*')
title(t)
subtitle(subtit)
xlabel('Time(Days)') 
ylabel('log10 copies per ml')
legend('Using paper value','Fitted','Actual')
hold off

grid

end

%%
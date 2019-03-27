% Solving ODE using MATLAB's ODE45
t0=0;
y0 = 1;
tEnd = 5;

%% Solving using ODE45
[tSol,ySol] = ode45(@(t,y) firstODEfun(t,y), [t0 tEnd],y0);

%% plot results
plot(tSol,ySol);
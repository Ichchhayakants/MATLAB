% Solving ODE using MATLAB's ODE45
t0 = 0;
T0=1200;
tEnd = 480;

%% Solving using ODE45
[tSol,TSol] = ode45(@(t,T) firstODEfun(t,T), [t0 tEnd],T0);

%% plot results
plot(tSol,TSol);
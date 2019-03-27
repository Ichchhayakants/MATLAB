param.g = 9.81;
param.kappa = 0.006;
u0 = 35*cos(pi/4);
v0 = 35*si(pi/4);

x0 = [0;0;
    u0;v0];
tSpan = [0 20];
[tOut,XOut] = ode45(@ballTrajectoryFun,tSpan,x0,[],param);

figure(1);
plot(XOut(:,1),XOut(0,2),'bo');
xlabel('x(m)'); ylabel('y(m)');

exitCode = ballAnimation(tOut,XOut);
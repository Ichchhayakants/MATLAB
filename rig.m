t = [300; 325; 350; 375; 400; 425; 450; 475];
u = [5.7;5.78;5.86;5.93;6;6.05;6.11;6.16];
y = [73.1;79.5;81.7;80.6;88;88.6;90.8;94.4];
N = length(T);

%% Calculate Linear Regression and plot
T = [t,x];
Y = y;
phi = inv(T'*T)*T'*Y

plot(t,,'bs',[0.5 5],phi(1)+phi(2)*[0.5 5],'-r');
hold on

%% Using lsqcurvefit
phi1 = lsqcurvefit(@(x,xData) myLinExample(x,xData), [1; 1], x, y);
plot([0.5 5], phi(1)+phi(2)*[0.5 5],':g');

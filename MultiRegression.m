
x = [0.8;1.4;2.7;3.8;4.8;4.9];
y = [0.69;1.0;2.02;2.39;2.34;2.83];
N = length(x);

%% Calculate Linear Regression and plot
X = [ones(N,1),x];
Y = y;
phi = inv(X'*X)*X'*Y

plot(x,y,'bs',[0.5 5],phi(1)+phi(2)*[0.5 5],'-r');
hold on

%% Using lsqcurvefit
phi1 = lsqcurvefit(@(x,xData) myLinExample(x,xData), [1; 1], x, y);
plot([0.5 5], phi(1)+phi(2)*[0.5 5],':g');

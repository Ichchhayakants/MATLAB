% Solve ODE-IVP using Euler's Explicit method
% y' -2ty
% y(0) = 1
t0 = 0;
x0 =0;
tEnd= 10;
h = 0.05;
N = (tEnd-t0)/h;
%% Initializing  solutions 
T = [t0:h:tEnd]';
X = zeros(N+1,1);
X(1) = x0;

%% Solving using Euler's Explicit method
for i =1:N
    k1 = 1-X(i)/10;
    k2 = 1- (X(i)+h*k1/2)/10
    %k3 = 1- (X(i)+(h*k1+h*k2)/4)/10
    X(i+1) = X(i) +h*k2;
end
Xtrue = 10*(1-exp(-1))
ERR = abs(Xtrue-X(end))
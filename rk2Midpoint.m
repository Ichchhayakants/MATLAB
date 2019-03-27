% Solve ODE-IVP using midpoint method
% y' -2ty
% y(0) = 1
t0 = 0;
y0 =1;
tEnd= 5;
h = 0.1;
N = (tEnd-t0)/h;
%% Initializing  solutions 
T = [t0:h:tEnd]';
Y = zeros(N+1,1);
Y(1) = y0;

%% Solving using Rk-2 Midpoint Explicit method
for i =1:N
    k1 = -2*T(i)*Y(i);
    tNew = T(i)+h/2;
    yNew = Y(i)+ h*k1/2;
    k2 = -2*tNew*yNew;
    Y(i+1) = Y(i) +h*(k2);
end
%% plot and obtain Errors
plot(T,Y);
hold on 
Ytrue = exp(-T.^2);
ERR = abs(Ytrue-Y);
%plot(T,ERR,'--r');
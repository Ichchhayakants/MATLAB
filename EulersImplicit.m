% Solve ODE-IVP using Euler's Explicit method
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

%% Solving using Euler's Explicit method
for i =1:N
    t = T(i) +h;
    y = fsolve(@(y) y-Y(i)+h*(2*t*y), Y(i));
    
    T(i+1) = t;
    Y(i+1) = y;
end
%% plot and obtain Errors
plot(T,Y);
hold on 
Ytrue = exp(-T.^2);
ERR = abs(Ytrue-Y);

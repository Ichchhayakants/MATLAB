% Solve ODE-IVP using Heun's method
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

%% Solving using heun's Explicit method
for i =1:N
    k1 = myFun(T(i),Y(i));
    k2 = myFun(T(i)+h,Y(i)+ h*k1);
    Y(i+1) = Y(i) +h/2*(k1+k2);
end
%% plot and obtain Errors
plot(T,Y);
hold on 
Ytrue = exp(-T.^2);
ERR = abs(Ytrue-Y);
%plot(T,ERR,'--r');
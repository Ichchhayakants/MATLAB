% Solve ODE-IVP using Heun's method
function yEnd = myEuler(y0,t0,h,N)
%% Initializing  solutions 
tEnd = t0 + N*h;
T = [t0:h:tEnd]';
Y = zeros(N+1,1);
Y(1) = y0;

%% Solving using heun's Explicit method
for i =1:N
    k1 = -2*T(i)*Y(i);
    tNew = T(i)+h;
    yNew = Y(i)+ h*k1;
    k2 = -2*tNew*yNew;
    Y(i+1) = Y(i) +h/2*(k1+k2);
end
yEnd = Y(end);
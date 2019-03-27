% Solve ODE-IVP using Euler's Explicit method
function yEnd= myEuler(y0,t0,h,N)

%% Initializing  solutions 
tEnd = t0 + N*h;
T = [t0:h:tEnd]';
Y = zeros(N+1,1);
Y(1) = y0;

%% Solving using Euler's Explicit method
for i =1:N
    fi = myFun(T(i),Y(i));
    Y(i+1) = Y(i) +h*fi;
end
yEnd = Y(end);

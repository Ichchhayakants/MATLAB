% Solve ODE-IVP using standard RK-4 method
function yEnd = myRK4(y0,t0,h,N)
%% Initializing  solutions 
tEnd = t0 + N*h;
T = [t0:h:tEnd]';
Y = zeros(N+1,1);
Y(1) = y0;

%% Solving using RK-4 method
for i =1:N
   k1 = myFun(T(i),Y(i));
    k2 = myFun(T(i)+h/2,Y(i)+h*k1/2);
    k3 = myFun(T(i)+h/2,Y(i)+h*k2/2);
    k4 = myFun(T(i)+h,Y(i)+h*k3);
    Y(i+1) = Y(i) +h/6*(k1+2*k2+2*k3+k4);
end
yEnd = Y(end);
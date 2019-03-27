% To compare global truncation error of Euler, Heun and RK-4 methods
%% Parameter for ode
t0 = 0;
y0 = 1;
tEnd= 1;
HALL = [0.1,0.05,0.01,0.005,0.001];

%% Comparision methods
yTrue = exp(-tEnd.^2);
ERR = zeros(3,5);
for i = 1:5
    h = HALL(i)
    N = (tEnd-t0)/h;
    
    Yeuler = myEuler(y0,t0,h,N);
    Yheun = myHeun(y0,t0,h,N);
    Yrk4 = myRK4(y0,t0,h,N);
    ERR(1,i) = abs(Yeuler-yTrue)
    ERR(2,i) = abs(Yheun-yTrue)
    ERR(3,i) = abs(Yrk4-yTrue)
    
end 

%% Plot for comparision
plot(log(HALL),log(ERR))
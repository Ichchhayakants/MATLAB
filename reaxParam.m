% Calculate parameters for arrhenius equation
% Data for reaction rates
r = [1.48 1.67 1.86 1.96 2.16
    2.35 2.79 3.07 3.37 3.62
    3.28 3.78 4.24 4.48 5.00
    4.12 4.64 5.15 5.76 6.08];
C = [1; 2; 3; 4];
T = [400; 450; 500; 550; 600];
C = repmat(C,5,1);
T = reshape(repmat(T',4,1),20,1);
xData = [C,T];
yData = reshape(r,20,1);
clear r C T

% Note: Do not edit above this line
% disp([xData,yData]);

%% Linear Least Square
x = 1 ./xData(:,2);
u = log(xData(:,1));
y = log(yData);  
N = length(y);
X = [ones(N,1), x,u];
Y=y;
phi = inv(X'*X) * X'*Y;
k0 = exp(phi(1));
EbyR = -phi(2);
n = phi(3);

%% using matlab function
phi_guess = [1; 100; 1];
phiLSQ = lsqnonlin(@(phi) rxnFunction(phi,xData,yData),phi_guess);

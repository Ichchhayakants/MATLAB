x = [0.5 1 2 4 6 8 10];
t = [2.53 3.11 3.65 4.2 4.79 5.07 5.33];
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

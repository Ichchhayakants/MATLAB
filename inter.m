% daily temperature data
t = [0,2,4,6,8,10,12,14,16];
T = [25,42,66,89,100,100,92,81,73];

% Interpolating temperature values
tI = [3, 9];
TI = spline(t,T,tI);
% Interpolation using PCHIP
TI_pc = pchip(t,T,tI);
% plot(tI,sI_pc,'--r')
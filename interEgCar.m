t =0:10:90;
s = [45 32 0 0 7 12 20 15 29 55];
% Intepolation  using 
tI = 0:90;
sI =spline(t,s,tI);
plot(tI,sI,'-k');
hold on
% Interpolation using PCHIP
sI_pc = pchip(t,s,tI);
plot(tI,sI_pc,'--r')
function yint= ndd(x,y,xint)
N = length(x);

%% Divided Difference coefficients
D = zeros(N);
colD = y;
D(:,1) = colD;
for i = 2:N
    colD = diff(colD)./(x(i:end)-x(1:N+1-i));
    D(1:N+1-i,i) = colD;
end
coef = D(1,:);

%%Interpolate
xq = [1;cumprod(xint-x(1:N-1))];
yint = coef*xq;
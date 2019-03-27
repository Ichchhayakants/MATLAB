x = [0.8;1.4;2.7;3.8;4.8;4.9];
y = [0.69;1.0;2.02;2.39;2.34;2.83];
N = length(x);

%% Calculate Linear Regression and plot
A = [N,sum(x);sum(x),sum(x.*x)];
b = [sum(y);sum(x.*y)];
phi = inv(A)*b;
plot(x,y,'bs',[0.5 5],phi(1)+phi(2)*[0.5 5],'r');

%% Calculate Divided DIfference and plot
xint= 0.8:0.01:4.9;
yint = zeros(size(xint));
for i =1:length(xint)
    yint(i) = ndd(x,y,xint(i));
end
hold on
plot(xint,yint,'--k')
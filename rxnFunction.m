function fErr= rxnFunction(phi,xx,yy)
% get parameters
k0 = phi(1);
E = phi(2);
n = phi(3);

%calculate rate
C = xx(:,1);
T = xx(:,2);
r = k0 * exp(-E./T) .* (C.^n);

fErr = yy-r
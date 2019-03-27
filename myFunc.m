function result= myFunc(n,x)
C =[1];
vec = [1:n];
C = [C,1./vec];
a = [1,x.^vec];

result = C.*a; 
end
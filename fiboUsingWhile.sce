fibo = [1,1];
while(fibol() < 200)
fiboNew = fibo(end)-fibo(end-1);
fibo=[fibo,fiboNew];
end

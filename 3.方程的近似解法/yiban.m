function yiban()
tic;
x0 = 1;
eps = 1e-5;
dx = 2;
n = 1;
while (abs(dx) >= eps) || (n > 1000)
    x1 = (log(4-x0))/2;
    dx = x1 - x0;
    x0 = x1;
    n = n + 1;
    fprintf('%d\n',x1);
end
toc;
if n > 1000 && (abs(dx) >= eps)
    disp(' 迭代失败 ')
else    
    disp(' 方程的解 ')    
    disp(x1)    
    disp([' 一共迭代 ',num2str(n),'次'])
end
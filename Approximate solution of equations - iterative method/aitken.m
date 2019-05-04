function aitken()
tic;
x0 = 1;
eps = 1e-5;
dx_ = 2;
n = 1;
while (abs(dx_) >= eps) || (n > 1000)
    x1 = (log(4-x0))/2;
    x2 = (log(4-x1))/2;
    dx = ((x0 * x2) - (x1 * x1)) / (x0 - 2 * x1 + x2);
    dx_ = dx - x0;
    x0 = dx;
    n = n + 1;
    fprintf('%d\n',dx);
end 
toc;
if n > 1000 && (abs(dx) >= eps)
    disp(' 迭代失败 ')
else    
    disp(' 方程的解 ')    
    disp(x1)    
    disp([' 一共迭代 ',num2str(n),'次'])
end





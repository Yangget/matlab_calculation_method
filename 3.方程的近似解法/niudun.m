function niudun()
tic;
x0 = 1;
eps = 1e-5;
dx_ = 2;
n = 1;
while (abs(dx_) >= eps) || (n > 1000)
    y = exp(2*x0) + x0 - 4;
    y_ = 2 * exp(2*x0) + 1;
    dx = x0 - y / y_;
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
    disp(dx)    
    disp([' 一共迭代 ',num2str(n),'次'])
end





function s=guass(a,b,n)  
% 高斯(gauss数值求解公式)   
% inputs:  
%   -a/b：积分上下限  
%   -n：分割次数 
% Outputs:  
%   -R：7阶精度Guass积分值  
%   -k：迭代次数  
%   -T：整个迭代过程  
h = (b - a) / n;
s = 0.0;
for m = 0 : (1 * n /2 - 1)
     s = s + h * (compute_g(a + h * (1 - 1 / sqrt(3) + 2 * m )) + compute_g(a + h * (1 + 1 / sqrt(3) + 2 * m )));
end
fprintf('%.9f',s);


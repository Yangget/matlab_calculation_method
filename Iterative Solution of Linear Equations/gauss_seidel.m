function [x,n] = guaseidel(A,b,x0,eps,it_max)
%  求线性方程组的guaseidel迭代法，调用格式为
%  [x, k] = guaseidel(A,b,x0,eps,M)
%  其中, A 为线性方程组的系数矩阵，b 为常数项，eps 为精度要求，默认为1e-6,
%  M为最大迭代次数，默认为200
%  x为线性方程组的解，k迭代次数
if nargin ==3
    eps = 1.0e-6;
    M = 200;
elseif nargin<3
    disp('输入参数数目不足3个');
    return
elseif nargin ==5
    M = it_max;
end
tic;
D = diag(diag(A));%求A的对角矩阵
L = -tril(A,-1);%求A的下三角矩阵,不带对角线
U = -triu(A,1);%求A的上三角矩阵
G = (D-L)\U;
f = (D-L)\b;
x = G*x0+f;
n=1;  %迭代次数
while norm(x-x0)>=eps
    x0 = x;
    x = G*x0+f;
    n = n+1;
    disp(x);
    disp(n);
    if(n>=M)
        disp('Warning:迭代次数太多,可能不收敛');
        return;
    end
end 
toc;

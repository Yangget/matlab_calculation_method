function [x,n] = jacobi(A,b,x0,eps,it_max)
%  �����Է������Jacobi�����������ø�ʽΪ
%  [x, k] = jacobi(A,b,x0,eps,it_max)
%  ����, A Ϊ���Է������ϵ������b Ϊ�����eps Ϊ����Ҫ��Ĭ��Ϊ1e-6,
%  it_max Ϊ������������Ĭ��Ϊ200
%  x Ϊ���Է�����Ľ⣬k��������
if nargin ==3
    eps = 1.0e-6;
    M = 200;
elseif nargin<3
    disp('���������Ŀ����3��');
    return
elseif nargin ==5
    M = it_max;
end
tic;
D = diag(diag(A));%��A�ĶԽǾ���
L = -tril(A,-1);%��A�������Ǿ���
U = -triu(A,1);%��A�������Ǿ���
B = D\(L+U);
f = D\b;
x = B*x0+f;
n = 1;%��������
while norm(x-x0)>=eps
    x0 = x;
    x = B*x0+f
    n = n+1;
    disp(n);
    if(n>=M)
        disp('Warning:��������̫��,���ܲ�����!')
	
        return;
    end
end
toc;




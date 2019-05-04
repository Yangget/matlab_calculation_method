function [x,n] = guaseidel(A,b,x0,eps,it_max)
%  �����Է������guaseidel�����������ø�ʽΪ
%  [x, k] = guaseidel(A,b,x0,eps,M)
%  ����, A Ϊ���Է������ϵ������b Ϊ�����eps Ϊ����Ҫ��Ĭ��Ϊ1e-6,
%  MΪ������������Ĭ��Ϊ200
%  xΪ���Է�����Ľ⣬k��������
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
L = -tril(A,-1);%��A�������Ǿ���,�����Խ���
U = -triu(A,1);%��A�������Ǿ���
G = (D-L)\U;
f = (D-L)\b;
x = G*x0+f;
n=1;  %��������
while norm(x-x0)>=eps
    x0 = x;
    x = G*x0+f;
    n = n+1;
    disp(x);
    disp(n);
    if(n>=M)
        disp('Warning:��������̫��,���ܲ�����');
        return;
    end
end 
toc;

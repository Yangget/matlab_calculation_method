function result = qinjiushao( A, x)
tic;
% 秦九韶算法的matlab实现
%  A为多项式降幂排列的系数
n = length( A );
F = zeros( n );
F( 1 ) = A( 1 );
for i = 1 : n-1
    F( i + 1) = F( i ) * x + A( i + 1 );
end
result = F( n );
toc;
disp( ' 真值 ');
polyval( A, x )
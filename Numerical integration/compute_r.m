%计算（/1+X^2）在0到1上面的积分  
a = 0  
b = 1  
epsilon = 5e-6  
f = @(x) (1 + x^2)^(1/2);  
y = romberg(f,a,b,epsilon)   


%后面是画出函数图像，注，不是积分函数图像。是被积函数图像  
x = 0:0.01:1;  
z = (1 + x.^2 ).^(1/2);   
plot(x,z),xlabel('x'),ylabel('y'),title(['Result = ',num2str(y)])  




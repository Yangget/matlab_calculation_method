# Least squares fitting polynomial（最小二乘拟合多项式）

------------------------------------------------------

## 实现代码

```matlab
>> xi = [ 1,  2, 3, 4, 5, 6, 7]

xi =

     1     2     3     4     5     6     7

>> yi = [2, 3, 6, 7, 5, 3, 2]

yi =

     2     3     6     7     5     3     2

>> x1 = 0 : 0.01 : 9;%起始为0，终点为9，步长为0.01
>> p = polyfit( xi, yi, 2);
>> y1 = polyval( p, x1);
>> xlabel(' X ');
>> ylabel(' Y ');
>> plot(xi, yi, 'o')
>> hold on
>> plot( x1, y1)
```

## 图

![image](https://github.com/Yangget/matlab_calculation_method/blob/master/Least%20squares%20fitting%20polynomial/untitled.jpg)

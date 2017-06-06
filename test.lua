-- 变量

a = 5       --全局变量
local b = 5 --局部变量

function joke()
    c = 5        --全局变量
    local d = 6  --局部变量
end

joke()
print(c,d)  -->5 nil

do
    local a = 6 --局部变量
    b = 6       --全局变量
    print(a,b)  -->6 6
end

print(a,b) -->5 6

f = "hello".."world"  --字符串连接
print(f)


x=10
y=11
x,y=y,x
print(x,y)


a,b,c=0,1
print(a,b,c) -->0 1 nil

a,b = a+1,b+1,b+2
print(a,b,c)  -->1 2

a,b,c=0
print(a,b,c) -->0



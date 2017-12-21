--
-- Created by IntelliJ IDEA.
-- User: Caroline
-- Date: 2017/12/21
-- Time: 11:58
-- To change this template use File | Settings | File Templates.
--

--function 函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里
function factorial1(n)
    if n==0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end

print(factorial1(10))
factorial2 = factorial1
print(factorial1(10))


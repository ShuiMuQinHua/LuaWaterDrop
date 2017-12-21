--
-- Created by IntelliJ IDEA.
-- User: Caroline
-- Date: 2017/12/20
-- Time: 15:24
-- To change this template use File | Settings | File Templates.
--

--print(type("hello world!!!"))       --string
--print(type(13*10.4))                --number
--print(type(print))                  --function
--print(type(type))                   --function
--print(type(true))                   --boolean
--print(type(nil))                    --nil
--print(type(type(X)))                --string
--                                    --table

tab1 = {"val6" , key1 = "val1", "val5" ,key2 = "val2" , "val3" , "val4" }
for k , v in pairs(tab1) do
    print(k .. "-" .. v)
end

tab1.key1 = nil
for k , v in pairs(tab1) do
    print(k .. "-" .. v)
end

if false or nil then
    print("至少有一个是true")
else
    print("false 和 nil 都为false")
end


str = "aaa,bbb,vvvv"
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]

print(str)
print(html)


len = "www.baidu.com"
print(#len)  -- #用来计算字符串的长度 13
print(#"www.baidu.com") -- 13

--table表  lua中的表其实是一个关联数组  注意lua中的初始索引一般以1开始
local tab1 = {} -- 新建一个空table

local tab2 = {"aaa", "bbb", "ccc"} --直接初始表

a = {}
a["key"] = "value"
key = 10;
a[key] = 22;
a[key] = a[key] + 11;

for k, v in pairs(a) do
    print(k .. "-" .. v)
end


local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end







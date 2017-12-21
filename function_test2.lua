--
-- Created by IntelliJ IDEA.
-- User: Caroline
-- Date: 2017/12/21
-- Time: 11:58
-- To change this template use File | Settings | File Templates.
--

function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

tab = {key1 = "val1", key2 = "val2"};
testFun(tab,
    function(key, val) --匿名函数
        return key .. "--" .. val
    end
)

local jontest = {}

function jontest.worky()
    print "worky worky"
end

function jontest.returntwo()
    return "foo", true
end

function jontest.optarg(table)
    setmetatable(table,{__index={str="foo"}})
    local str = table[1] or table.str
    print(str)
end

return jontest


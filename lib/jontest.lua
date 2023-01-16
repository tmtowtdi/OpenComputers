
local jontest = {}

function jontest.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "jontest"
end

function jontest.worky(str)
    if( type(str) == 'string' ) then
        print( "overload worky with string -->", str, "<--" )
        return
    elseif type(str) == 'number' then
        print "number"
        return
    end

    if type(str) == 'nil' then
        print( "worky worky" )
    else
        print( "I don't understand this arg type.", str, type(str) )
    end
end
--[[
]]

jontest.worky_alias = jontest.worky

function jontest.returntwo()
    return "foo", true
end

function jontest.optarg(table)
    setmetatable(table,{__index={str="foo"}})
    local str = table[1] or table.str
    print(str)
end

return jontest



local colors = {}

function colors.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return( "colors" )
end


--[[
https://ocdoc.cil.li/api:colors
]]


function colors.white()
    return 0
end
function colors.orange()
    return 1
end
function colors.magenta()
    return 2
end
function colors.lightblue()
    return 3
end
function colors.yellow()
    return 4
end
function colors.lime()
    return 5
end
function colors.pink()
    return 6
end
function colors.gray()
    return 7
end
function colors.silver()
    return 8
end
function colors.cyan()
    return 9
end
function colors.purple()
    return 10
end
function colors.blue()
    return 11
end
function colors.brown()
    return 12
end
function colors.green()
    return 13
end
function colors.red()
    return 14
end
function colors.black()
    return 15
end

return colors


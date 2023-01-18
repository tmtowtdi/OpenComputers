
local sides = {}
function sides.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "sides"
end

--[[

https://ocdoc.cil.li/api:sides

--]]

function sides.bottom()
    return 0
end
function sides.top()
    return 1
end
function sides.back()
    return 2
end
function sides.front()
    return 3
end
function sides.right()
    return 4
end
function sides.left()
    return 5
end


--[[
    Aliases
]]

sides.down = sides.bottom
sides.negy = sides.bottom

sides.up = sides.top
sides.posy = sides.top

sides.north = sides.back
sides.negz = sides.back

sides.south = sides.front
sides.posz = sides.front
sides.forward = sides.front

sides.west = sides.right
sides.negx = sides.right

sides.east = sides.left
sides.posx = sides.left

return sides


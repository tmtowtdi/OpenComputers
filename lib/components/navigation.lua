
local navigation = {}

--[[

https://ocdoc.cil.li/component:navigation

--]]

function navigation.getPosition()
    return 10, 20, 30
    --return nil, "error if out of range"
end
function navigation.getFacing()
    return 3
    -- see https://ocdoc.cil.li/api:sides
end
function navigation.getRange()
    return 100
end
function navigation.findwaypoints(range)
    -- range is a number

    -- First beacon
    local beacon1 = {}
    beacon1.position = {}
    beacon1.position[1] = 10        -- X position (distance from center of map)
    beacon1.position[2] = 20        -- Y position (distance from center of map)
    beacon1.position[3] = 30        -- Z position (distance from center of map)
    beacon1.redstone = 7            -- strength of redstone signal (which redstone signal?)
    beacon1.label    = 'beacon 1 (waypoint block) label'

    -- Second beacon
    local beacon2 = {}
    beacon2.position = {}
    beacon2.position[1] = 40        -- X position (distance from center of map)
    beacon2.position[2] = 50        -- Y position (distance from center of map)
    beacon2.position[3] = 60        -- Z position (distance from center of map)
    beacon2.redstone = 7            -- strength of redstone signal (which redstone signal?)
    beacon2.label    = 'beacon 2 label'

    -- etc for all the beacons in range


    -- AoH of all our beacons
    local t = {}
    t[1] = beacon1
    t[2] = beacon2
    -- etc

    return t
end
function navigation.name()
    return 'navigation'
end
function navigation.name()
    return 'navigation'
end
function navigation.name()
    return 'navigation'
end

return navigation

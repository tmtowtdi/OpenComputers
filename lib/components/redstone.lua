
local redstone = {}

--[[

https://ocdoc.cil.li/component:redstone

"bundled" methods allow interoperation with the ProjectRed mod.
"wireless" methods allow interoperation with WR-CBE and SlimeVoid's VR mods.

--]]

function redstone.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "redstone"
end

function redstone.getInput(side)
--[[
side is either
    an integer from sides.lua api
        we return the integer signal strength on that side
    or it's nil
        we return a table of signal strengths on all sides.
]]

    if( type(side) == 'nil' ) then
        local t = {}
        t[0] = 0
        t[1] = 15       -- top
        t[2] = 10       -- back
        t[3] = 0
        t[4] = 0
        t[5] = 0
        return t
    end

    if( type(side) == 'number' and side >= 0 and side <= 5 ) then
        return 1 -- 0-15
    end

    print( "I dunno how to deal with this arg type." )
    os.exit()
end
function redstone.getInput(side)
--[[
side is either
    an integer from sides.lua api
        we return the integer signal strength on that side
    or it's nil
        we return a table of signal strengths on all sides.
]]

    if( type(side) == 'nil' ) then
        local t = {}
        t[0] = 0
        t[1] = 15       -- top
        t[2] = 10       -- back
        t[3] = 0
        t[4] = 0
        t[5] = 0
        return t
    end

    if( type(side) == 'number' and side >= 0 and side <= 5 ) then
        return 1 -- 0-15
    end

    print( "I dunno how to deal with this arg type." )
    os.exit()
end
function redstone.getInput(side)
--[[
side is either
    an integer from sides.lua api
        we return the integer signal strength on that side
    or it's nil
        we return a table of signal strengths on all sides.
]]

    if( type(side) == 'nil' ) then
        local t = {}
        t[0] = 0
        t[1] = 15       -- top
        t[2] = 10       -- back
        t[3] = 0
        t[4] = 0
        t[5] = 0
        return t
    end

    if( type(side) == 'number' and side >= 0 and side <= 5 ) then
        return 1 -- 0-15
    end

    print( "I dunno how to deal with this arg type." )
    os.exit()
end
function redstone.getOutput(side)
-- Same api as getInput
    if( type(side) == 'nil' ) then
        local t = {}
        t[0] = 0
        t[1] = 15       -- top
        t[2] = 10       -- back
        t[3] = 0
        t[4] = 0
        t[5] = 0
        return t
    elseif( type(side) == 'number' and side >= 0 and side <= 5 ) then
        return 1 -- 0-15
    else
        print( "I dunno how to deal with this arg type." )
        os.exit()
    end
end
function redstone.setOutput(integer_or_table, value_or_nil)
--[[
    We get(table) or (side, value).
    If we got (table), it's {side: value, side, value, ...}

    We return the old value, either a table or a single value
--]]
    if( type(integer_or_table) == 'number' ) then
        local side = integer_or_table
        local value = value_or_nil
        local oldvalue = redstone.getOutput(side)
        -- Set redstone signal going out side $side to $value
        return oldvalue
    else
        local newtable = integer_or_table
        local oldtable = redstone.getOutput()

        for side, value in pairs(oldtable) do
            -- set block's side output to value
        end
        return oldtable
    end
end

function redstone.getBundledInput(side_or_nil, color_or_nil)
--[[
    getBundledInput()               returns table
    getBundledInput(side)           returns table
    getBundledInput(side, color)    returns number
]]

    if( type(side) == 'number' ) then
        if( type(color) == 'number' ) then
            -- we were called with args (side, color).
            -- We're returning the redstone signal strength on side $side going 
            -- through the cable colored $color.
            return 5
        else
            -- we were called with args (side)
            local t = {}
            --[side] = color
            t[3] = 5    -- [light blue] = signal strength 5
            t[10] = 10   -- [purple] = signal strength 10
            --etc
            return t
        end
    end

    -- we were called with args ()
    local t = {}
    for i = 0, 5 do
        local thisside = {}
        thisside[5] = 5     -- the light blue (5) cable on this side has redstone strength 5
        thisside[10] = 15   -- the purple (10) cable on this side has redstone strength 15
        t[i] = thisside
    end
    return t
end
function redstone.getBundledOutput(side_or_nil, color_or_nil)
    -- same deal as getBundledInput above, I'm just simplifying since this is 
    -- just for testing return types.
    if( type(side) == 'number' ) then
        if( type(color) == 'number' ) then
            return 3
        end
    end
    local mytab = {}
    return mytab
end
function redstone.setBundledOutput(side, color, value)
    -- no choices here, only one way to call this
    local oldvalue = redstone.getBundledOutput(side, color)
    -- set the color wire on side $side to $color
    return oldvalue
end
function redstone.getComparatorInput(side)
    return 3
end
function redstone.getWirelessInput()
    return 3
end
function redstone.getWirelessOutput()
    return true
end
function redstone.setWirelessOutput(mybool)
    local oldoutput = redstone.getWirelessOutput()
    -- set new wireless output to mybool
    return oldoutput
end
function redstone.getWirelessFrequency()
    return 10
end
function redstone.setWirelessFrequency(freq)
    local oldfreq = redstone.getWirelessFrequency()
    -- set new frequency to $freq
    return oldfreq
end
function redstone.getWakeThreashold()
    return 10
end
function redstone.setWakeThreshold(thresh)
    local oldthresh = redstone.getWakeTheshold()
    -- set new threshold to $thresh
    return oldthresh
end









return redstone


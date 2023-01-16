
local robot = {}

--[[

https://ocdoc.cil.li/api:robot


A bunch of these functions come in threes, with Up and Down variations:
    use
    useUp
    useDown

The first arg for use() is side, an integer saying which side to use the 
currently-selected tool on.  useUp and useDown are specifying which side, but 
their first arg is still also "side".

I don't know if that's a copy/paste error in the API docs or if these functions 
really take a side arg.
--]]

function robot.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "robot"
end

function robot.detect()
    return false, 'string'
    -- false return means what's in front will not impede the robot
end
function robot.detectUp()
    return false, 'string'
end
function robot.detectDown()
    return false, 'string'
end
function robot.select(slot) 
    return 2
end
function robot.inventorySize()
    return 16
end
function robot.count(slot) 
    return 2
end
function robot.space(slot) 
    return 2
end
function robot.transferTo(slot, count) 
    -- slot is numeric
    -- count is numeric and optional
    return true
end
function robot.compareTo(slot) 
    -- slot is numeric
    return true
end
function robot.compare() 
    return true
end
function robot.compareUp() 
    return true
end
function robot.compareDown() 
    return true
end
function robot.drop(count) 
    -- count is numeric
    return true
end
function robot.dropUp(count) 
    return true
end
function robot.dropDown(count) 
    return true
end
function robot.suck(count) 
    -- count is numeric
    return true
end
function robot.suckUp(count) 
    return true
end
function robot.suckDown(count) 
    return true
end
function robot.place(side, sneaky) 
    -- side is numeric and optional
        -- see https://ocdoc.cil.li/api:sides
    -- sneaky is boolean and optional
    return true
end
function robot.placeUp(side, sneaky) 
    -- side is numeric and optional
    -- sneaky is boolean and optional
    return true
end
function robot.placeDown(side, sneaky) 
    return true
end
function robot.durability() 
    return 1,1,1
    -- return nil, "this return happens if nothing is equipped in the tool slot 
    -- or that item has no durability"
end
function robot.swing(side, sneaky)
    return true
    -- return false, "explanation of why false"
end
function robot.swingUp(side, sneaky)
    return true
end
function robot.swingDown(side, sneaky)
    return true
end
function robot.use(side, sneaky, duration)
    return true
    -- duration is how long to use the item, as when charging a bow.  It's a 
    -- number but I have no idea its value.  Ticks?  Seconds?  Probably ticks.
    -- return false, "explanation of why false"
end
function robot.useUp(side, sneaky, duration)
    return true
end
function robot.useDown(side, sneaky, duration)
    return true
end
function robot.forward()
    return true
    -- return false, "explanation of why false"
end
function robot.back()
    return true
    -- return false, "explanation of why false"
end
function robot.up()
    return true
    -- return false, "explanation of why false"
end
function robot.down()
    return true
    -- return false, "explanation of why false"
end
function robot.turnLeft()
    return true
end
function robot.turnRight()
    return true
end
function robot.tankCount()
    return 0    -- number of tanks installed in robot
end
function robot.selectTank(tank)
    -- no retval specified in api docs.
    -- tank is numeric, which one to select
end
function robot.tankLevel(tank)
    return 0    -- fluid level in selected tank
end
function robot.tankSpace(tank)
    return 0    -- remaining fluid capacity in selected tank
end
function robot.compareFluidTo(tank)
    return false
end
function robot.transferFluidTo(tank, count)
    -- tank is numeric
    -- tries to transfer fluid from selected tank to 'tank' specified in arg
    -- Defaults to moving 1000mb (1 bucket) of fluid.  count is the amount to 
    -- move, I /assume/ it's in mb but that's not documented.
    return true
end
function robot.compareFluid()
    return false
end
function robot.compareFluidUp()
    return false
end
function robot.compareFluidDown()
    return false
end
function robot.drain(count)
    return false
end
function robot.drainUp(count)
    return false
end
function robot.drainDown(count)
    return false
end
function robot.fill(count)
    return false
end
function robot.fillUp(count)
    return false
end
function robot.fillDown(count)
    return false
end

return robot


local component = {}

function component.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "component"
end

component.navigation = require "tests.components/navigation"
component.redstone = require "tests.components/redstone"


return component


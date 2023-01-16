
local component = {}

function component.name()
    -- this is not part of the api, it just makes it easier
    -- for me to check that I'm using the right lib.
    return "component"
end

component.navigation = require "components/navigation"
component.redstone = require "components/redstone"


return component


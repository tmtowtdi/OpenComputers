#!/usr/bin/lua

local inspect = require "inspect"
local c = require "component"
local n = c.navigation

print( "Module being tested is ", n.name() )

t = n.findwaypoints(10)
print( inspect(t) )

print "navigation: tests passed."

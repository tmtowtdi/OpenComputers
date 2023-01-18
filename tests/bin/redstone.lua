#!/usr/bin/lua

local c = require "tests.component"
local i = require "inspect"
local r = c.redstone

print( "Module being tested is ", r.name() )

local t = {}
t[3] = 15
local oldt = r.setOutput(t)
print( i(oldt) )






print "redstone: tests passed."


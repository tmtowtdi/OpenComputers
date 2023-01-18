#!/usr/bin/lua

local r = require "tests.robot"
print( "Module being tested is ", r.name() )

r.forward()
r.turnRight()
r.forward()
r.forward()
r.swing()

print "robot: tests passed."

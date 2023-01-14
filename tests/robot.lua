#!/usr/bin/lua

local r = require "robot"

r.forward()
r.turnRight()
r.forward()
r.forward()
r.swing()

print "robot: tests passed."

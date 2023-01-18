#!/usr/bin/lua

local side = require "tests.sides"
print( "Module being tested is ", side.name() )

print "Bottom - 0"
print( side.bottom() )
print( side.down() )
print( side.negy() )
print ""

print "Top - 1"
print( side.top() )
print( side.up() )
print( side.posy() )
print ""

print "Back - 2"
print( side.back() )
print( side.north() )
print( side.negz() )
print ""

print "Front - 3"
print( side.front() )
print( side.south() )
print( side.posz() )
print( side.forward() )
print ""

print "Right - 4"
print( side.right() )
print( side.west() )
print( side.negx() )
print ""

print "Left - 5"
print( side.left() )
print( side.east() )
print( side.posx() )
print ""

print "sides: tests passed."

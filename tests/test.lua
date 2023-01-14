#!/usr/bin/lua

local j = require "jontest"

j.worky()

local a, b = j.returntwo()
print(a)
print(b)

j.optarg({})
j.optarg({str = "bar"})


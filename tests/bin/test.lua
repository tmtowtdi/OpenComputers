#!/usr/bin/lua

local j = require "tests.jontest"

j.worky()
j.worky_alias()

local a, b = j.returntwo()
print(a)
print(b)

j.optarg({})
j.optarg({str = "bar"})

a = {}
a[4] = 'array'
a.foo = {}
--a['foo']['bar'] = 'baz'
a.foo.bar = 'baz'
print( a['foo']['bar'] )
print( a.foo.bar )
print( a[4] )


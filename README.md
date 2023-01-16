
# TBD
- Create some sort of test harness to run \*.lua (maybe except for test.lua) in 
  tests/

# The goal
OpenComputers in minecraft uses Lua code and it exposes a bunch of different 
APIs and components specific to the game (robots, navigation, etc).  

But trying to write code actually in Minecraft, using the half-assed text editor 
and terminal etc makes me want to kick babies.  I want to develop out here IRL.

But the code I'm going to be writing needs to make use of those APIs provided by 
the in-game version of Lua.  So this project is meant to include callable 
libraries that accept the same args and return values of the same types returned 
by those APIs, as documented [in the OpenComputers docs](https://ocdoc.cil.li/).

# Get started
Edit `init.sh`; make sure its path matches wherever you checked this repo out 
to.  Next:
```shell
$ source init.sh
$ lua tests/test.lua
$ ./tests/test.lua
```
The two invocations of `test.lua` should work identically.  `test.lua` isn't 
much more than Hello World.  The other test scripts in `tests/` are meant to 
show that the actual libraries work.  They're also examples of how those libs 
should be called.

# Tests
in ROOT/tests/.

These test scripts are not meant to test every function in a given lib, since 
the functions are all purposely just stubs.

The main point of these tests is to ensure that the library or component can be 
required and run.  Every script in here (other than test.lua) really should run.

The test.lua test is pretty much for just dicking around, testing whatever you 
want to test.



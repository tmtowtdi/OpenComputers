
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




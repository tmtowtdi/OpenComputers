
# Get started
Edit `init.sh`; make sure its path matches wherever you checked this repo out 
to.  Next:
```shell
$ source init.sh
$ lua test.lua
$ ./test.lua
```
The two invocations of `test.lua` should work identically.

# lib/
I want the code I write on my desktop to be able to be copy/pasted unchanged 
into MC and have it run.

To do that, I want to put code in lib/ that will emulate the OpenComputers 
calls.  So I'd need eg `lib/component.lua` to include a function `type()` that 
takes a string arg and returns a string.  Doesn't matter what the retval is, the 
code in `/lib` is not meant to be real code.

# Foo
Is github really autogenerating a toc if I have enough headers?

## Bar
Is github really autogenerating a toc if I have enough headers?

# Flurble
Is github really autogenerating a toc if I have enough headers?


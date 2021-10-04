# Makefiles

This section needs work! The Makefile is a first pass that builds with out-of
source object files. It also uses a src directory and a dist directory which
may or may not be what we want for our classes.

## Useage

> NOTE:
> > This file probably conflicts with the CSS 501 submission requirements. I
will update the file once we come up with a good strategy for meeting the
submission requirements.
> > Also I have no idea if this is a good idea to use yet, but it work nicely
so far :-)

To use this makefile:
* place it in a top level project directory
* place all source files and libraries into a /src folder
* make sure that there is only one main() function in all of /src
* run `make` to build
* run `make clean` to `rm -r dist` (this will obliterate /dist)
* don't store anything you care about in /dist (see above)

To run the object file after `make`:
```console
student123@uwcsslab$ ./dist/a.out
```

### ToDo

* Better documentation of the Makefile
* Better makefile that matches course standards
* find a way to make for different courses (like 'make css501')
* Turn the source attribution link into a MD link
* add the source attribution to the actual makefile

### Source Attribution

This code was based off of the work of Job Vranish. Find the code at:
> https://spin.atomicobject.com/2016/08/26/makefile-c-projects/


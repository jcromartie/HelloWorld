# The Real Ultimate Flixel + MXMLC Tutorial

I was trying to get a simple "Hello World" up and running using Flixel
and the Flash SDK without an IDE. Although there were several
tutorials floating around, they all left out important steps or
otherwise alluded to magic.

So, here it is, without further ado:

First, you should have a directory for your game source files. Copy
the `org` directory from the Flixel framework into your source
directory. AS3 loads packages (like `org.flixel.*`) based on directory
name relative to the source file, so this directory scheme logically
follows. Then, you should add the following files for our simple
tutorial:

* [HelloWorld.as](blob/master/src/HelloWorld.as)
* [PlayState.as](blob/master/src/PlayState.as)

You'll also want an *HTML wrapper* to display the generated SWF file
in a browser. For a full-fledged webpage, you'll want a little more
embellishment than this, or you'll want to use a dedicated flash
embedder like SWFObject.

* [HelloWorld.html](blob/master/HelloWorld.html)

Your directory structure should now look like this:

* some-dir/
  * org/...
  * HelloWorld.as
  * PlayState.as
  * HelloWorld.html

You should also make sure that mxmlc is on your `PATH`. This is beyond
the scope of this tutorial.

`cd` into your game's source directory. Now, run:

    mxmlc -static-link-runtime-shared-libraries=true HelloWorld.as

If the compiler exits without any warnings or errors, you should be
good to go, with a shiny new .swf file in the current directory.

Just load HelloWorld.html in your favorite browser, and you should see
a little message from Flixel.

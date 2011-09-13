# The Real Ultimate Flixel + MXMLC Tutorial

(I was trying to get a simple "Hello World" up and running using
Flixel and the Flash SDK without an IDE. Although there were several
tutorials floating around, they all left out important steps or
otherwise alluded to magic. So, here it is, without further ado:)

## Project Directory

Firstly, you should have a dedicated directory for your game.

### The "src" Directory

Within this directory, it's customary to have a `src` directory for
ActionScript source code.

Next, copy the `org` directory from the Flixel framework into your
`src` directory. AS3 loads packages (like `org.flixel.*`) based on
directory name relative to the source file, so this directory scheme
logically follows.

Then, you should add the following files for our simple tutorial:

* [src/HelloWorld.as](HelloWorld/blob/master/src/HelloWorld.as)
* [src/PlayState.as](HelloWorld/blob/master/src/PlayState.as)

### HTML Wrapper File

You'll also want an *HTML wrapper* to display the generated SWF file
in a browser. For a full-fledged webpage, you'll want a little more
embellishment than this, or you'll want to use a dedicated flash
embedder like SWFObject.

* [HelloWorld.html](HelloWorld/blob/master/HelloWorld.html)

## Overview

Your directory structure should now look like this:

* your-game-source-dir/
  * org/... (flixel library)
  * src/
    * HelloWorld.as
    * PlayState.as
  * HelloWorld.html
  
## Compiling The SWF File

(This step assumes that you have mxmlc on your `PATH`. This is beyond
the scope of this tutorial.)

Flixel games compile into single SWF files. To do this, just `cd` into
your project directory, and run:

    mxmlc -static-link-runtime-shared-libraries=true src/HelloWorld.as
    
The `-static-link-runtime-shared-libraries=true` flag tells the
compiler to bundle the code necessary to run Flixel into your SWF, so
that it's completely self-contained.

If the compiler exits without any warnings or errors, you should be
good to go, with a shiny new .swf file sitting at `src/HelloWorld.swf`.

## Play It!

Just load HelloWorld.html in your favorite browser, and you should see
a little message from Flixel!

Enjoy!

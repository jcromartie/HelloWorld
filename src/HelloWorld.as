// This file is commented in a line-by-line style, for total n00bs.

package
{
    // Import the flixel library, so that we can use Flixel objects!
    import org.flixel.*;

    // Declare a single public class for our package. This will be the
    // entry point for our program. We extend FlxGame to gain all of
    // utility that the FlxGame class provides, which includes setting
    // up the whole Flixel environment and loading resources, etc.
    public class HelloWorld extends FlxGame
    {
	// This is the constructor of our class. It is called when
	// HelloWorld.swf is loaded and Flash displays our movie.
	public function HelloWorld()
	{
	    // Call the superclass (FlxGame) constructor to initialize
	    // the display. The parameters here mean that the drawing
	    // area (not the movie size) is going to be 320 pixels
	    // high by 240 pixels wide, with the PlayState class as
	    // the initial game state, and a 2X scaling factor, so it
	    // will look nice and chunky.
	    super(320, 240, PlayState, 2);
	}
    }
}

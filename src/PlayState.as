// create an anonymous package
package
{
    // import flixel, as per usual
    import org.flixel.*;

    // Extend the FlxState class, which represents a game state like
    // the main menu, level select, world map view, inventory screen
    // view, etc.. Any time you have a full-screen state that changes
    // the way you interact with the game, extend FlxState.
    public class PlayState extends FlxState
    {
	// The create() method of FlxState is called when Flixel loads
	// your state object and is about to present it. This is the
	// place to put the set-up logic for your state, and NOT the
	// constructor.
	override public function create():void
	{
	    // add a textbox at position 0, 0 (upper-left), with a
	    // width of 100 pixels, and a text of "Hello, World!"
	    add(new FlxText(0, 0, 100, "Hello, World!"));
	}
    }
}
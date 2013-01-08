package ;
import nme.Lib;
import org.flixel.FlxGame;
import states.GameState;

/**
 * Demo for varisous flixel camera features:
 *
 * Styles
 * Zoom
 * Lerp
 * Lead
 * 
 * @author TiagoLr ( ~~~ProG4mr~~~ )
 * @link https://github.com/ProG4mr
 */

class FlxCameraDemo extends FlxGame
{

	public function new() 
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;
		
		var ratioX:Float = stageWidth / 800;
		var ratioY:Float = stageHeight / 480;
		var ratio:Float = Math.min(ratioX, ratioY);
		#if (flash || desktop || neko)
		super(Math.floor(stageWidth / ratio), Math.floor(stageHeight / ratio), GameState, ratio, 60, 60, true);
		#else
		super(Math.floor(stageWidth / ratio), Math.floor(stageHeight / ratio), GameState, ratio, 60, 30, true);
		#end

		forceDebugger = true;
		useSystemCursor = true;
		mouseEnabled = true;
		_mouse.visible = true;
	}
	
}
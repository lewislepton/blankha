package;

import kha.Framebuffer;
import kha.Color;
import kha.Assets;
import kha.input.KeyCode;
import kha.input.Keyboard;
import kha.input.Mouse;
import kha.input.Gamepad;
import kha.input.Surface;

import state.MenuState;
import state.OptionState;
import state.PlayState;

class Project {	
	public function new() {
		setupStates();		

		Keyboard.get().notify(onKeyDown, onKeyUp);
		Mouse.get().notify(onMouseDown, onMouseUp, onMouseMove, null);
	}

	public function update():Void {
		if (State.activeState != null){
			State.activeState.update();
		}	
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		
		if (State.activeState != null){
			State.activeState.render(graphics);
		}

		graphics.end();
	}

	private function setupStates() {
		State.setup();
		State.add("menu", new MenuState());
		State.add("option", new OptionState());
		State.add("play", new PlayState());

		State.set("play");
	}

	public function onKeyDown(keyCode:KeyCode){
		if (State.activeState != null){
			State.activeState.onKeyDown(keyCode);
		}
	}

	public function onKeyUp(keyCode:KeyCode){
		if (State.activeState != null){
			State.activeState.onKeyUp(keyCode);
		}
	}

	public function onMouseDown(button:Int, x:Int, y:Int) {
		if (State.activeState != null){
			State.activeState.onMouseDown(button, x, y);
		}
	}

	public function onMouseUp(button:Int, x:Int, y:Int) {
		if (State.activeState != null){
			State.activeState.onMouseUp(button, x, y);
		}
	}

	public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int) {
		if (State.activeState != null){
			State.activeState.onMouseMove(x, y, cx, cy);
		}
	}

	public function onTouchDown(id:Int, x:Int, y:Int){
		if (State.activeState != null){
			State.activeState.onTouchDown(id, x, y);
		}
	}
	
	public function onTouchUp(id:Int, x:Int, y:Int){
		if (State.activeState != null){
			State.activeState.onTouchUp(id, x, y);
		}
	}

	public function onTouchMove(id:Int, x:Int, y:Int){
		if (State.activeState != null){
			State.activeState.onTouchMove(id, x, y);
		}
	}

	public function onGamepadAxis(axis:Int, value:Float){
		if (State.activeState != null){
			State.activeState.onGamepadAxis(axis, value);
		}
	}

	public function onGamepadButton(button:Int, value:Float){
		if (State.activeState != null){
			State.activeState.onGamepadButton(button, value);
		}
	}
}
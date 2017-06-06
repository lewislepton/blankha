package;

import kha.graphics2.Graphics;

class State {
	public static var activeState:State;
	static var states:Map<String, State>;
	
	public function new() {}

	public function update() {}

	public function render(graphics:Graphics) {}

	public function onKeyDown(keyCode:Int){}

	public function onKeyUp(keyCode:Int) {}

	public function onMouseDown(button:Int, x:Int, y:Int) {}

	public function onMouseUp(button:Int, x:Int, y:Int) {}

	public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int) {}

	public static function setup() {
		states = new Map<String, State>();
	}

	public static function add(name:String, state:State):State {
		states.set(name, state);
		return state;
	}

	public static function remove(name:String) {
		states.remove(name);
	}

	public static function set(name:String) {
		activeState = states.get(name);
	}
}
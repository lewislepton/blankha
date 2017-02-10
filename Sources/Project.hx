package;

import kha.Framebuffer;
import kha.Color;
import kha.Assets;
import kha.Key;
import kha.input.Keyboard;
import kha.input.Mouse;

import state.*;

enum GameState {
	Menu;
	Option;
	Play;
}

class Project {
	var _gameState:GameState;
	var _menuState:MenuState;
	var _playState:PlayState;
	var _optionState:OptionState;

	public function new() {
		setupStates();
		setMenuState();

		Keyboard.get().notify(onKeyDown, onKeyUp);
		Mouse.get().notify(onMouseDown, onMouseUp, onMouseMove, null);
	}

	public function update():Void {
		switch (_gameState){
			case GameState.Menu: _menuState.update();
			case GameState.Option: _optionState.update();
			case GameState.Play: _playState.update();
		default: return;
		}
	}

	public function render(framebuffer:Framebuffer):Void {
		var graphics = framebuffer.g2;
		graphics.begin();
		switch (_gameState){
			case GameState.Menu: _menuState.render(graphics);
			case GameState.Option: _optionState.render(graphics);
			case GameState.Play: _playState.render(graphics);
		default: return;
		}
		graphics.end();
	}

	private function setupStates(){
		_menuState = new MenuState();
		_optionState = new OptionState();
		_playState = new PlayState();
	}

	public function setMenuState(){
		_gameState = GameState.Menu;
	}

	public function setPlayState(){
		_gameState = GameState.Play;
	}

	public function setOptionState(){
		_gameState = GameState.Option;
	}

	public function onKeyDown(key:Key, char:String){
		
	}

	public function onKeyUp(key:Key, char:String){
		
	}

	public function onMouseDown(button:Int, x:Int, y:Int){
		
	}

	public function onMouseUp(button:Int, x:Int, y:Int){
		
	}

	public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int){
		
	}
}

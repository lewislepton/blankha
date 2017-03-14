package state;

import kha.graphics2.Graphics;
using kha.graphics2.GraphicsExtension;
import kha.Color;
import kha.Assets;

import char.Player;

class PlayState extends State{
	public var player:Player;

	public function new() {
		super();

		player = new Player(256, 128);
	}

	override public function update() {
		
	}

	override public function render(graphics:Graphics) {
		player.render(graphics);
	}

	override public function onMouseMove(x:Int, y:Int, cx:Int, cy:Int) {
		player.x = x;
		player.y = y;
	}
}
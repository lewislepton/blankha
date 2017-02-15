package state;

import kha.graphics2.Graphics;
using kha.graphics2.GraphicsExtension;
import kha.Color;
import kha.Assets;

import char.Player;

class PlayState {
	public var player:Player;

	public function new(){
		player = new Player(256, 128);
	}

	public function update(){
		
	}

	public function render(graphics:Graphics){
		player.render(graphics);
	}

	public function onMouseMove(x:Int, y:Int){
		player.x = x;
		player.y = y;
	}
}
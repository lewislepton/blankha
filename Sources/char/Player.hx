package char;

import kha.graphics2.Graphics;
import kha.Color;
import kha.Image;
import kha.Assets;

class Player {
	public var x:Float;
	public var y:Float;
	public var image:Image;

	public function new(x:Float, y:Float){
		this.x = x;
		this.y = y;
		image = Assets.images.blanka;
	}

	public function update(){
		
	}

	public function render(graphics:Graphics){
		graphics.drawImage(image, x, y);
	}
}
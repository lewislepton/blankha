package char;

import kha.graphics2.Graphics;
using kha.graphics2.GraphicsExtension;
import kha.Color;
import kha.Assets;

class Player {
	public var x:Int;
	public var y:Int;
	public var width:Int;
	public var height:Int;

	public function new(x:Int, y:Int, width:Int, height:Int){
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}

	public function update(){
		
	}

	public function render(graphics:Graphics){
		graphics.color = Color.Pink;
		graphics.fillRect(x, y, width, height);
	}
}
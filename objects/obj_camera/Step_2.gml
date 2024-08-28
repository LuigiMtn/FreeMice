/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (instance_exists(target)){
	
	var mousedir = point_direction(target.x, target.y, mouse_x, mouse_y);
	var xx = lengthdir_x(16, mousedir);
	var yy = lengthdir_y(16, mousedir);
	
	
	with(target){
		var dist = point_distance(x, y, mouse_x, mouse_y)/2;
	}
		xx /= 32;
		yy /= 32;
		
		xx *= dist;
		yy *= dist;
		
		x = lerp(x, target.x + xx, 0.3);
		y = lerp(y, target.y - 24 + yy, 0.3);
}
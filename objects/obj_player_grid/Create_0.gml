/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region variables
//movimento
grid_x = 0;
grid_y = 0;
moving = false;

//game fell 
xstrech = 0;
ystrech = 0;

//estado
state = state_player.free;

door = -1;
door_time = 0;
#endregion

#region states
state_free = function(){
	
	if(!moving){
	 grid_x += (kright - kleft);
	 grid_y += (kdown  - kup);
	
	var new_pos = obj_control.grid_pos(grid_x, grid_y);
	target_x = new_pos[0];
	target_y = new_pos[1];
	
	moving = true;
	}

	
	if(moving){
		x = lerp(x, target_x, 0.2);
		y = lerp(y, target_y, 0.2);
		if(point_distance(x, y, target_x, target_y) <1){
			x = target_x;
			y = target_y;
			moving = false;
		}
	}

}
#endregion
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region variables
//Posição do grid
grid_x = 5;
grid_y = 5;
//movimento
moveh  = 0;
movev  = 0;
moving = false;

//game fell 
xstrech = 0;
ystrech = 0;
tempoefeitofumaca = 0;

face = 1;

//estado
state = state_player.free;

door = -1;
door_time = 0;
#endregion

#region states
state_free = function(){
	#region move
	if(!moving){

	 //Movimento
	 moveh = (kright - kleft);
	 movev = (kdown  - kup);
	 //face
	 if moveh > 0{
		face = 1;	
	}else if moveh < 0{
		face = -1;	
	}
	 //debug
	 show_debug_message("gx: " + string(moveh));
	 show_debug_message("gy: " + string(movev));
	 
	 // Nova posição da grid após o movimento
	 next_grid_x = grid_x + moveh;
	 next_grid_y = grid_y + movev;
	 
	 // Calcula a posição na room correspondente ao grid
     new_pos_x = grid_pos(next_grid_x, grid_y)[0];
     new_pos_y = grid_pos(grid_x, next_grid_y)[1];
	 
	 colisao_grid();
	 
	 //transformando a pos(grid) em (pos x,y)
	var new_pos = grid_pos(grid_x, grid_y);
	target_x = new_pos[0];
	target_y = new_pos[1];

	//definindo move como verdadeiro
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
	#endregion
}
#endregion
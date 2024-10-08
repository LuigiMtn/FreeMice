// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
#macro TELAW 480
#macro TELAH 270
#macro SIZE_GRID 16

enum state_player
{
	free
}


#region colisao normal

	function colisao(){
		//colisao horizontal
		if place_meeting(x+hspd, y, obj_col){
			while !place_meeting(x+sign(hspd), y, obj_col){
				x += sign(hspd);	
			}
			hspd = 0;
		}
		x += hspd;
		
		//colisao vertical
		if place_meeting(x, y+vspd, obj_col){
			while !place_meeting(x, y+vspd, obj_col){
				y += sign(vspd);	
			}
			vspd = 0;
		}
		y += vspd;
	}


#endregion


//espaço separado para o obj_player_grid
#region player movimento por grid
	var col = room_width / SIZE_GRID;
	var lin = room_height / SIZE_GRID;

	function pos_grid(_x, _y){
		var _grid_x = floor(x / SIZE_GRID);
		var _grid_y = floor(y / SIZE_GRID);
		return[_grid_x, _grid_y];
	}

	function grid_pos(_grid_x, _grid_y){
		var _x = _grid_x * SIZE_GRID;
		var _y = _grid_y * SIZE_GRID;
		return [_x, _y];
	}
#endregion

#region colisao por grid
	function colisao_grid(){
		if(!moving){
		// Verifica colisão horizontal
	        if (!place_meeting(new_pos_x, y, obj_col)) {
	            grid_x = next_grid_x;
	        }
	    // Verifica colisão vertical
	        if (!place_meeting(x, new_pos_y, obj_col)) {
	            grid_y = next_grid_y;
	        }
		}
	}
#endregion


#region efeitos (game feel)

function cria_efeito(_x, _y, _spr){
	var ef = instance_create_depth(_x, _y, depth+1, obj_efeito);
	ef.sprite_index = _spr;
	
	return(ef);
}

function screenshake(treme, tempo){
	if (!instance_exists(obj_screenshake)){
		var ss = instance_create_depth(x, y, depth, obj_screenshake);
		ss.treme = treme;
		ss.alarm[0] = tempo;
	}
}
	
//Não é a sombra do player
function draw_shadow(){
	//	
	draw_set_alpha(0.5);
	draw_set_color(c_black);
		//VOLTAR AQUI DEPOIS
	draw_set_alpha(1);
	draw_set_color(-1);
	
	
}

#endregion

#region transicao room

function sala_transacao(_destino){
	if instance_exists(obj_camera){
		with(obj_camera){
			if (tempotransicao = 0){
				global.ultimasala = room;
				
				tempotransicao = 1;
				destino = _destino;
				transicaoindo = 0;
			}
		}
	}
}

#endregion


#region Som e Musica

function som(snd)
{
	audio_play_sound(snd,1,false);
	audio_sound_gain(snd,global.somvol,0);
}
function musica(mus)
{
	audio_play_sound(mus,1,true);
	audio_sound_gain(mus,global.musvol,0);
}

#endregion

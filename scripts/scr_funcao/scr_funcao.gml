// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
#macro TELAW 480
#macro TELAH 270

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

#region colisao por grid
function colisao_grid(){
	
	
}


#endregion
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (!instance_exists(obj_mouse)){
	instance_create_depth(x,y, depth, obj_mouse);	
}

if (!instance_exists(obj_camera)){
	instance_create_depth(x, y, depth, obj_camera);	
}

if room = Room_Menu || room = Room_Levels || room = Room1 {
	musica(mus_bossa8bit);	
}
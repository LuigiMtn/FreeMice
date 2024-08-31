/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (!instance_exists(obj_mouse)){
	mouse = instance_create_depth(x,y, depth, obj_mouse);	
}

if (!instance_exists(obj_camera)){
	camera = instance_create_depth(x, y, depth, obj_camera);	
}
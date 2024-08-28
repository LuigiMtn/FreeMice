/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Criando minha view
view_enabled[0] = true;
view_visible[0] = true;
view_camera[0] = camera_create_view(0,0,TELAW,TELAH,0,id,-1,-1,TELAW,TELAH);

if instance_exists(target){
	x = target.x;	
	y = target.y;
}
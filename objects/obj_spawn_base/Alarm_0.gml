/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//criando o player
if (!instance_exists(obj_player_grid)){
	start_x = pos_grid(x, y)[0];
	start_y = pos_grid(x, y)[1];
	var player = instance_create_layer(x, y, "Player", obj_player_grid);
	
	//som abrindo a porta
	som(snd_impact);
	//efeito de tremida
	screenshake(3, 3);
}


if(instance_exists(obj_player_grid)){
	image_index = 1;		
}

	timer = 0;
	alarm_active = false;





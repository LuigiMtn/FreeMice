/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if place_meeting(x, y, obj_mouse){
	//se mouse sobre (lado = 0) botao vermelho
	if lado = 0 && image_index = 0 {image_blend = c_orange;}
	//se não botao amarelo
	else						   {image_blend = c_yellow;}
	
	//faz o botao se mover 80 pixel para o lado
	x = lerp(x, xstart-(80*lado), 0.2);
	if lado = 0{
		//se não tiver lado... ou seja centro de tela - ele sobe 8 pixels/
		lado0_vert = lerp(lado0_vert, -8, 0.2);	
	}
	
	//Clique no botão
	if (mouse_check_button_released(mb_left) && desativar_ao_clicar != 2){
		botaofunc();
		if !audio_is_playing(snd_button_sound){
			som(snd_button_sound);
		}
		//adicionar audio
		
		if(desativar_ao_clicar = true){
			desativar_ao_clicar = 2;	
		}
	}	
}else{
	//se mouse fora do botão cor normal
	image_blend = c_white;	
	
	// resetando a posição do botao
	
	x = lerp (x, xstart, 0.2);
	lado0_vert = lerp(lado0_vert, 0, 0.2);
}
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verificar botao
if verificado = false{
	if nivel = true{
		image_index = 1	
		if mouse_check_button_released(mb_left){
			verificado = true;	
		}
	}
}else if(verificado = true){
	image_index = 2;	
}


#region mouse no botao
if place_meeting(x, y, obj_mouse){
	//se mouse sobre (lado = 0) botao vermelho
	if lado = 0 && (image_index = 1){image_blend = c_lime;}
	//se não botao amarelo
	else if (image_index = 0)       {image_blend = c_red;}
	
	//faz o botao se mover 80 pixel para o lado
	x = lerp(x, xstart-(80*lado), 0.2);
	if lado = 0{
		//se não tiver lado... ou seja centro de tela - ele sobe 8 pixels/
		lado0_vert = lerp(lado0_vert, -8, 0.2);	
	}
	
	//Clique no botão
	if (mouse_check_button_released(mb_left) && desativar_ao_clicar != 2) && (image_index = 2){
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

#endregion



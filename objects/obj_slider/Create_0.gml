/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
texto = "Slider"
val = 0.5;
sliderfunc = function(){
		// var  = val
}

selcor = c_white;

mover = false;

alteravalor = function(){
	 var mousesobre = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);
	
	if mousesobre && mouse_check_button_pressed(mb_left){
		mover = true;	
	}
	
	if mover = true{
		//mouse_x - x = GARANTE QUE O VALOR SEMPRE FIQUE DENTRO DA LARGURA DO SPRITE
		// QUANDO DIVIDIMOS PELA LARGURA, O RETORNO SEMPRE SERA ENTRE 0 E 1
		// PQ É NUMEROS DENTRO DO VALOR DA LARGURA
		val = (mouse_x -x) / sprite_width;
		// E PARA TER CTZ GARANTE Q VAI ESTAR EM 0 E 1
		val = clamp(val, 0,1); 
		selcor = c_yellow;
		sliderfunc();
	}else{
		selcor = c_white;
	}
	
	if mouse_check_button_released(mb_left) && mover = true{
		mover = false;
		som(snd_button_sound);
	}	
}
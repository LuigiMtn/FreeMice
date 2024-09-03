/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

#region transicao

//Tempotransicao diretamente ligado ao crescimento das barras
if (tempotransicao > 0){
	// transicaoindo = 0
	// tempotransicao vai receber valores lineares até q seu valor 
	// seja equivalente a metade da tela mais 5 pixeis
	if (transicaoindo = 0){
		tempotransicao = lerp(tempotransicao,(TELAH/2)+5,0.2);
	}
	// transicaoindo = 1
	// tempotransicao vai receber valores lineares até q seu valor 
	// vá da metade da tela até 0
	if (transicaoindo = 1){
		tempotransicao = lerp(tempotransicao,0,0.2);
	}
	// quando tempotransicao já está no valor maximo e ainda não iniciou a volta
	if ((tempotransicao >= (TELAH/2)+4) && (transicaoindo = 0)){
		//ele inicia a volta
		transicaoindo = 1;
		//define a room que ele vai voltar (em outro objeto)
		if (destino = room){
			room_restart();
		}else{
			room_goto(destino);
		}
	}
	//reseta as variaveis
	if ((tempotransicao <= 1) && (transicaoindo = 1)){
		tempotransicao = 0; 
		transicaoindo = 0;
	}
	//define a cor do retangulo
	draw_set_color(c_black);

	//desenha os retangulos
	draw_rectangle(0,0,TELAW,tempotransicao,false);
	draw_rectangle(0,TELAH,TELAW,TELAH-tempotransicao,false);

	//reseta a cor
	draw_set_color(-1);
}

#endregion

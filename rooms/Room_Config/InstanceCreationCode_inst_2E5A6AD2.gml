texto = "Tela cheia"

botaofunc = function()
{
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
	}
}

desativar_ao_clicar = false;
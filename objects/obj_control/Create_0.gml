/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.debug = false;
// vida do player
global.vidamax = 4;
global.vida = global.vidamax;

// Controle de som
global.volsound = 0.5;
global.volmusic = 0.5;

// Contra corrido de entrar e sair de portas!! (não use isso)
global.ultimasala = room_first;
global.novasalax = -1;
global.novasalay = -1;

// tela
// melhore a qualidade de subpixels e sprites rotacionados 
surface_resize(application_surface, TELAW, TELAH);
// mumentando a tela
window_set_size(TELAW*2, TELAH*2);



//espaço separado para o obj_player_grid
#region player movimento por grid
size_grid = 16;
col = room_width / size_grid;
lin = room_height / size_grid;

function pos_grid(_x, _y){
	var _grid_x = floor(x / size_grid);
	var _grid_y = floor(y / size_grid);
	return[_grid_x, _grid_y];
}

function grid_pos(_grid_x, _grid_y){
	var _x = _grid_x * size_grid;
	var _y = _grid_y * size_grid;
	return [_x, _y];
}

#endregion
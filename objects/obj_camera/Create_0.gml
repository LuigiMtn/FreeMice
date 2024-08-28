/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//target = obj_player
target = obj_player_grid

// transicoes
tempotransicao = 0;
transicaoindo = 0;
//destino = -1;
destino = Room1;

depth = -999;

if instance_exists(target){
	x = target.x;	
	y = target.y;
}
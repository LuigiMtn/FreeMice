/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.debug == true){
	for (var i = 0; i < col; i++){
		for (var j = 0; j < lin; j++){
			var _x = size_grid * i;
			var _y = size_grid * j;
		
		
			draw_set_alpha(.1);
			draw_rectangle(_x, _y, _x + size_grid-2, _y + size_grid-2, true);
			draw_set_alpha(1);
		}
	}
}
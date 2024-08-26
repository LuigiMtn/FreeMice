/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var col = room_width / SIZE_GRID;
var lin = room_height / SIZE_GRID;

if(global.debug == true){
	for (var i = 0; i < col; i++){
		for (var j = 0; j < lin; j++){
			var _x = SIZE_GRID * i;
			var _y = SIZE_GRID * j;
		
		
			draw_set_alpha(.1);
			draw_rectangle(_x, _y, _x + SIZE_GRID-2, _y + SIZE_GRID-2, true);
			draw_set_alpha(1);
		}
	}
}
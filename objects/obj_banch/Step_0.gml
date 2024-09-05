/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verificando topo
var c_col = instance_place(x, bbox_top, obj_col);
var c_col2 = !instance_place(x, bbox_top - 1, obj_banch);

var c_banch_up = instance_place(x, bbox_top - 1, obj_banch);
var c_banch_down =  !instance_place(x, bbox_top + 1, obj_banch)

if c_col or c_col2{
	image_index = 0;	
}

if c_banch_up{
	image_index = 1;	
}

if c_banch_down{
	image_index = 2;
}
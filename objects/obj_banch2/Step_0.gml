/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//verificando topo
var c_col = instance_place(x, bbox_top, obj_col);
var c_col2 = !instance_place(x, bbox_top - 1, obj_banch2);

//verificando instancia na direita
var c_vdir = instance_place(bbox_right + 1, y, obj_banch2);
var c_vdir2 = instance_place(bbox_right + 1, y, obj_col);
//verificando instancia na esquerda
var c_vesq = instance_place(bbox_left - 1, y, obj_banch2);
var c_vesq2 = instance_place(bbox_left - 1, y, obj_col);

//centro
var c_banch_up = instance_place(x, bbox_top - 1, obj_banch2);
//baixo
var c_banch_down =  !instance_place(x, bbox_top + 1, obj_banch2)


//escolhendo topos
if(c_col or c_col2) and (c_vdir or c_vdir2){
	image_index = 0;	
}else if(c_col or c_col2) and (c_vesq or c_vesq2){
	image_index = 3;	
}

//centro
if(c_banch_up and (c_vdir or c_vdir2)){
	image_index = 1;
}else if(c_banch_up and (c_vesq or c_vesq2)){
	image_index = 4;
}

//baixo
if(c_banch_down and (c_vdir or c_vdir2)){
	image_index = 2;
}else if(c_banch_down and (c_vesq or c_vesq2)){
	image_index = 5;	
}
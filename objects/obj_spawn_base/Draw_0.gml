/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_sprite_ext(spr_spawn_base, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);

if(!instance_exists(obj_player_grid)){
	draw_sprite_ext(spr_mice, 0, x, y+10,  image_xscale, image_yscale, 0, c_white, image_alpha);
}


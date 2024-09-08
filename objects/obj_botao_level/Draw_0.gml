/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite_ext(sprite_index, image_index, x, y + lado0_vert, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_set_font(fnt_open);
draw_set_color(c_white);

var yy = y + 8 + lado0_vert;
var textow = string_width(texto);

if lado = 0 && image_index = 0 && place_meeting(x, y, obj_mouse){
	draw_set_color(c_white);	
}

if lado = 1  { draw_text (bbox_left+40, yy, texto);}
if lado = -1 { draw_text (bbox_right-(textow)-40, yy, texto);}
if lado = 0  { draw_text (x+(sprite_width/2)-(textow/2), yy, texto);}

draw_set_color(c_white);
draw_set_font(-1);


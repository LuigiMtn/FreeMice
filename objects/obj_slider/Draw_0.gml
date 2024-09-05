/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alteravalor()

var xsel = x + sprite_width * val;



draw_set_font(fnt_open);

draw_text(x+(sprite_width/2)-(string_width(texto)/2), y-15, texto);

draw_set_font(-1);


draw_sprite(spr_slide, 1, x, y);

draw_sprite_part_ext(spr_slide,0, 0, 0, sprite_width*val, sprite_height, x, y, 1, 1, selcor, image_alpha);

draw_sprite_ext(spr_slider_selector, 2, xsel, y, 1, 1, 0, selcor, image_alpha);







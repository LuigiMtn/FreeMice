/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_alpha(0.5);
draw_sprite(spr_eff_shadow,0,x,y);
draw_set_alpha(1);

//efeito fumaca
tempoefeitofumaca++;
if tempoefeitofumaca mod 10 = 0 && moving != 0{
	cria_efeito(x+irandom_range(-5, 5), y+irandom_range(-5, 5), spr_eff_smoke);	
}

if(moving){
   image_index = 2;	
}else{
   image_index = 0;	
}

//controle da face 
if face < 0{
	draw_sprite_ext(spr_mice, image_index, x + sprite_width, y, face, 1, 0, c_white, 1);
}else if face > 0{
	draw_sprite_ext(spr_mice, image_index, x, y, face, 1, 0, c_white, 1);
}




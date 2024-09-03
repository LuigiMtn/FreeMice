/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.debug = false;
// vida do player
global.vidamax = 4;
global.vida = global.vidamax;

// Controle de som
global.somvol = 0.5;
global.musvol = 0.5;

// Sistema corrido de entrar e sair de portas!! (não use isso)
global.ultimasala = room_first;
global.novasalax = -1;
global.novasalay = -1;

// tela
// melhore a qualidade de subpixels e sprites rotacionados 
surface_resize(application_surface, TELAW, TELAH);
// mumentando a tela
window_set_size(TELAW*2, TELAH*2);



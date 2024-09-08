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

//Salas que o player tem acesso
global.sala1 = true;
global.sala2 = false;
global.sala3 = false;
global.sala4 = false;
global.sala5 = false;

// tela
// melhore a qualidade de subpixels e sprites rotacionados 
surface_resize(application_surface, TELAW, TELAH);
// mumentando a tela
window_set_size(TELAW*2, TELAH*2);



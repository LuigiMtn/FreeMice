/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (keyboard_check_pressed(vk_tab)) global.debug = !global.debug;

if (keyboard_check_pressed(vk_enter)) screenshake(5, 5 * room_speed);
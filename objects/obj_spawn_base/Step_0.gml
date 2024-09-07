/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

timer += delta_time/1000000;
show_debug_message(timer);

if(alarm_active = false){
	if (timer > timer_limit){
		alarm[0] = 1;
		alarm_active = true;
	}
}


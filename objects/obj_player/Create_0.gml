/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
#region variables
//movimento
hspd = 0;
vspd = 0;

spd  = .2;
max_spd = 3;



//game fell 
xstrech = 0;
ystrech = 0;

//estado
state = state_player.free;

#endregion

#region states
state_free = function(){
	var moveh = kright - kleft;
	var movev = kdown  - kup;
	
	if (moveh != 0 || movev != 0){
		hspd += spd * moveh;
		vspd += spd * movev;
		if ( sign(hspd) !=moveh) hspd = spd*moveh;	
		if ( sign(vspd) !=movev) vspd = spd*movev;	
	}else{
		hspd = lerp(hspd, 0, 0.2);	
		vspd = lerp(vspd, 0, 0.2);
	}
	
	// limitando velocidade
	hspd = clamp(hspd, -max_spd + abs(vspd/2), max_spd - abs(vspd/2));
	vspd = clamp(vspd, -max_spd + abs(hspd/2), max_spd - abs(hspd/2));
}
#endregion
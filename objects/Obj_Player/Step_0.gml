/// @description Insert description here
// You can write your code in this editor

if (hspeed = 0){
	sprite_index = spr_standing_man;
}
else {
	sprite_index = spr_running_man;
}

if(vspeed < 0 ) {
	sprite_index = spr_climbing_man
}
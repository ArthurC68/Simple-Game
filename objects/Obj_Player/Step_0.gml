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

if(vspeed >0 ) {
	image_speed = -1;
	sprite_index = spr_climbing_man
}

if(health <= 0 ) {
	
	
}
if (!place_meeting(x,y-5,obj_ladder)) {
	vspeed = 5;
}



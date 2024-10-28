/// @description Insert description here
// You can write your code in this editor


//reset health and remome life
if(health <= 0 ) {
	health = 100;
	lives -= 1;
}
//game over screen
if(lives <= 0 ){
	room_goto(game_over);

}


//Player Motion-----------------------------------------------

//Get Player Input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_climb = keyboard_check(vk_up);

//Calcualte Movment
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_ladder) && (key_climb)) {
	vsp = - climbsp;
}

//Horizontal Collions

if (place_meeting(x+hsp, y,Obj_Stone)) {
	
	while (!place_meeting(x+sign(hsp),y,Obj_Stone)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x +hsp;

//Veritcal Collions
if (place_meeting(x, y+vsp,Obj_Stone)) {
	
	while (!place_meeting(x,y+sign(vsp),Obj_Stone)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y +vsp;

//Direction

if (hsp = 0){
	sprite_index = spr_standing_man;
}
else {
	sprite_index = spr_running_man;
}
if (hsp < 0) {
	image_xscale = -1;
}
else{
	image_xscale = 1;
}
if(vsp < 0 ) {
	sprite_index = spr_climbing_man

}

if(vsp >0 ) {
	image_speed = -1;
	sprite_index = spr_climbing_man
}


/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0,0,128,64,10,0,0,0,20);

draw_text(10,10,"Score = "+string(score));
draw_text(10,30,"Health = "+string(health));


if (health <= 0) {
	
	draw_text(200,509,"You Died")
}
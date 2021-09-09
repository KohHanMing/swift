/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_colour(c_white);
var dir = "Player Direction: " + string( obj_player.direction);
draw_text_transformed(32, 48, dir, 1.5, 1.5, 0);

var spd = "Player Speed: " + string(obj_player.speed);
draw_text_transformed(32, 96, spd, 1.5, 1.5, 0);
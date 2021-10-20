/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_colour(c_white);
var dir = "Player Direction: " + string( obj_player.direction);
draw_text_transformed(32, 48, dir, 1.5, 1.5, 0);

var spd = "Player Speed: " + string(obj_player.phy_speed);
draw_text_transformed(32, 96, spd, 1.5, 1.5, 0);

var hp = "Player Health: " + string(obj_player.CURR_HEALTH);
draw_text_transformed(32, 144, hp, 1.5, 1.5, 0);

/*
var weapon_ranged_angle = "Weapon (Ranged) Angle: " + string(obj_weapon_ranged.image_angle);
draw_text_transformed(32, 192, weapon_ranged_angle, 1.5, 1.5, 0);

var weapon_ranged_angle_firing = "Weapon is firing: " + string(obj_weapon_ranged.firing);
draw_text_transformed(32, 240, weapon_ranged_angle_firing, 1.5, 1.5, 0);
*/
var player_health = "Player Health " + string(obj_player.HEALTH);
draw_text_transformed(32, 336, player_health, 1.5, 1.5, 0);

var curr_track = "Current track " + string(audio_get_name(obj_soundtrack_manager.curr_track_inst));
draw_text_transformed(32, 376, curr_track, 1.5, 1.5, 0);

var curr_volume = "Current volume " + string(obj_soundtrack_manager.curr_volume);
draw_text_transformed(32, 416, curr_volume, 1.5, 1.5, 0);
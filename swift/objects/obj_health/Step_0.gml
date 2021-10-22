/// @description Insert description here
// You can write your code in this editor

if (obj_player.CURR_HEALTH < obj_player.MAX_HEALTH) {
	is_collectable = true;
} else {
	is_collectable = false;	
}
event_inherited();

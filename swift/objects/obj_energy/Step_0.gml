/// @description Insert description here
// You can write your code in this editor

if (obj_player.CURR_ENERGY < obj_player.MAX_ENERGY) {
	is_collectable = true;
} else {
	is_collectable = false;	
}
event_inherited();

/// @description Insert description here
// You can write your code in this editor
if (not firing) {
	firing = true;
	if (sprite_index == spr_weapon_ranged_right_idle) {
		sprite_index = spr_weapon_ranged_right_fire;
	} else {
		sprite_index = spr_weapon_ranged_left_fire;
	}
	alarm[0] = room_speed / 4 //Fires 4 rounds per second
}
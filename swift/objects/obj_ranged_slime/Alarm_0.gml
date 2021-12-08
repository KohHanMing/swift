/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dist_to_player <= RETREAT_RANGE && canAttack) {
	dist_to_wall = range_finder(sprite_x,sprite_y,dir_to_player,ATTACK_RANGE,obj_wall);
	has_line_of_sight = dist_to_wall == -1 || (dist_to_wall > 0 && dist_to_player < dist_to_wall);

	if (has_line_of_sight) {
		canAttack = false;
		// Do attack
		enemy_attack(id);
		audio_play_sound(ATTACK_SFX, 99, false);
		// Reset canAttack
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
	}
}

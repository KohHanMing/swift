/// @description Movement
// You can write your code in this editor

// Inherit the parent event
event_inherited();

phy_speed_x = 0;
phy_speed_y = 0;

if (dist_to_player <= ATTACK_RANGE) {
	var dir = sector_number * 45;
	if (dir - 45 < dir_to_player && dir + 45 > dir_to_player) {
		alarm[MOVEMENT_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
		exit;
	}
}

if (dist_to_player <= AGGRO_RANGE) {
	swarmer_aggro();
}

alarm[MOVEMENT_ALARM] = BEHAVIOUR_UPDATE_SECONDS;

if (!global.key_change_weapon_down and weapon_wheel_weapon != -1) {
	
	var _weapon_wheel_weapon = weapon_wheel_weapon;
	with (obj_player) {
		change_weapon(_weapon_wheel_weapon);
	}
	weapon_wheel_weapon = -1;
}
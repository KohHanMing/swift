/// @description Energy recharge
// You can write your code in this editor
if (CURR_ENERGY >= MAX_ENERGY) {
	CURR_ENERGY = MAX_ENERGY;
} else {
	CURR_ENERGY += ENERGY_INCREMENT;
	if (CURR_ENERGY >= MAX_ENERGY) {
		play_sfx(sfx_fullenergy,false);
	}
}

alarm[2] = ENERGY_RECHARGE_RATE;
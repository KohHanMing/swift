/// @description Forcibly Remove Powering Down Sprite
if powering_down {
	powering_down = false;
	if sprite_index == spr_honey_badger_power_down_side sprite_index = spr_honey_badger_idle_side;
	else if sprite_index == spr_honey_badger_power_down_front sprite_index = spr_honey_badger_idle_front;
	else if sprite_index == spr_honey_badger_power_down_back sprite_index = spr_honey_badger_idle_back;
}

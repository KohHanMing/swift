/// @description Insert description here
// Swap Weapon to Equipped Melee Weapon

instance_create_layer(x, y, "Instances", obj_game.equipped_melee_weapon);
swap_weapon_event();
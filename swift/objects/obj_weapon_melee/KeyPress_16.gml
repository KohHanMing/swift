/// @description Insert description here
// Swap Weapon to Equipped Ranged Weapon

instance_create_layer(x, y, "Instances", obj_game.equipped_ranged_weapon);
swap_weapon_event();
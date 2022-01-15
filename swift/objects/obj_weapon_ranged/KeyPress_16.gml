/// @description Insert description here
// Swap Weapon to Equipped Melee Weapon

play_sfx(sfx_swap_melee, false);
instance_create_layer(x, y, "Instances", obj_game.equipped_melee_weapon);
event_user(3);
/// @description Insert description here
// Swap Weapon to Equipped Ranged Weapon

play_sfx(sfx_swap_ranged, false);
instance_create_layer(x, y, "Instances", obj_game.equipped_ranged_weapon);
event_user(3);
/// @description Insert description here
// Swap Weapon to Equipped Melee Weapon

audio_play_sound(sfx_swap_melee, 99, false);
instance_create_layer(x, y, "Instances", obj_player.equipped_melee_weapon);
event_user(3);
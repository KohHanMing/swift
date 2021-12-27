/// @description Insert description here
// Swap Weapon to Equipped Ranged Weapon

audio_play_sound(sfx_swap_ranged, 99, false);
instance_create_layer(x, y, "Instances", obj_player.equipped_ranged_weapon);
event_user(3);
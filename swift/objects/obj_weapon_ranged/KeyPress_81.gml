/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sfx_swap_melee,99,false);
instance_create_layer(x, y, "Instances", obj_blade);
instance_destroy();
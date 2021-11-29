/// @description Insert description here
// You can write your code in this editor
with(other) {
	instance_destroy();	
}

audio_play_sound(sfx_deflect, 99, false);
instance_create_layer(x,y,"Instances", obj_energy);
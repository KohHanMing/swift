/// @description Insert description here
// You can write your code in this editor
with(other) {
	instance_destroy();	
}

play_sfx(sfx_deflect, false);
instance_create_layer(x,y,"Instances", obj_collectable_energy);
with(other) {
	event_user(DEFLECTED);
	instance_destroy();	
}

play_sfx(sfx_deflect, false);
instance_create_layer(x,y,"Instances", obj_collectable_energy);
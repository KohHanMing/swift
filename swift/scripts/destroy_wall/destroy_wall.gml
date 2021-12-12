///@description Destroys wall and updates shadows

function destroy_wall(_inst){
	with(_inst) {
	
		// Checking Rectangle Points
		var padding = 16;
		var rectangle = [x-padding,y+padding,x+sprite_width+padding,y-sprite_height-padding];
	
		instance_destroy(shadow);
		instance_destroy();
	
		with(obj_wall_static) {
			if not collision_rectangle(rectangle[0],rectangle[1],rectangle[2],rectangle[3],id,0,false) continue;
			instance_destroy(shadow);
			event_perform(ev_create,0);
		}

	}
}
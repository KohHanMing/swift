// @description Start Dash
// Simple implementation
if (moving and dashing = false) {
	dashing = true;
	apply_vector(object_index, DASH_SPEED_INCREASE, direction);
	alarm[0] = room_speed / 20; // Dash lasts 1/20 of a second
}

// Complex implementation would include checking 
// keyboard inputs for intended dash direction 
// to allow dash cancelling 
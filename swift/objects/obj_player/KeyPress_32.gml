/// @description Start Dash
// Simple implementation
if (moving and dashing = false) {
	dashing = true;
	speed += DASH_SPEED_INCREASE;
	alarm[0] = room_speed / 4; // Dash lasts a quarter of a second
}

// Complex implementation would include checking 
// keyboard inputs for intended dash direction 
// to allow dash cancelling 
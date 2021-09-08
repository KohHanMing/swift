/// @description Stop Dash
// Simple implementation
dashing = false;

if (moving) { // Technically this check is unnecessary
	if (speed >= DASH_SPEED_INCREASE) {
		speed -= DASH_SPEED_INCREASE;
	} else {
		speed = 0;
	}
}
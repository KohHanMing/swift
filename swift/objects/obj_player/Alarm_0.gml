/// @description Stop Dash
// Simple implementation
dashing = false;

friction = 0
if (moving) { // Technically this check is unnecessary
	if (speed >= DASH_SPEED_INCREASE) {
		speed -= DASH_SPEED_INCREASE;
	} else {
		friction = 2;
	}
}
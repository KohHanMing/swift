/// @description Insert description here
// You can write your code in this editor

// Check keyboard inputs once per frame
w_key_pressed = keyboard_check(ord("W"));
a_key_pressed = keyboard_check(ord("A"));
s_key_pressed = keyboard_check(ord("S"));
d_key_pressed = keyboard_check(ord("D"));

friction = 0 //Assume no deceleration
if (!w_key_pressed and !a_key_pressed and !s_key_pressed and !d_key_pressed) {
	moving = false;
	friction = 2; // Probably needs to change depending on the tile you're on
} else {
	moving = true; 
	// Decide on goal direction based on keyboard inputs
	if (w_key_pressed and !s_key_pressed) {
		if (a_key_pressed and !d_key_pressed) {
			goal_direction = 135;
		} else if (d_key_pressed and !a_key_pressed) {
			goal_direction = 45;
		} else {
			goal_direction = 90;
		}
	}
	if (a_key_pressed and !d_key_pressed) {
		if (w_key_pressed and !s_key_pressed) {
			goal_direction = 135;
		} else if (s_key_pressed and !w_key_pressed) {
			goal_direction = 225;
		} else {
			goal_direction = 180;
		}
	}
	if (s_key_pressed and !w_key_pressed) {
		if (a_key_pressed and !d_key_pressed) {
			goal_direction = 225;
		} else if (d_key_pressed and !a_key_pressed) {
			goal_direction = 315;
		} else {
			goal_direction = 270;
		}
	}
	if (d_key_pressed and !a_key_pressed) {
		if (w_key_pressed and !s_key_pressed) {
			goal_direction = 45;
		} else if (s_key_pressed and !w_key_pressed) {
			goal_direction = 315;
		} else {
			goal_direction = 0;
		}
	}
	
	// After deciding on the goal direction, turn towards the direction. 
	// Turning should result in the shortest possible transition time. 
	curr_direction = direction;
	if ((curr_direction < goal_direction and (goal_direction - curr_direction) < 180)
	or (curr_direction > goal_direction and (curr_direction - goal_direction) > 180)) {
		curr_direction += TURN_SPD;
		if (curr_direction > 360) {
			curr_direction %= 360;
		}
	} else if (curr_direction != goal_direction) {
		curr_direction -= TURN_SPD;
		if (curr_direction < 0) {
			curr_direction += 360;
		}
	}
	direction = curr_direction;

	// Dashing effectively temporarily increases max speed.
	// If not at max speed, accelerate. 
	if (dashing) {
		if (speed < MAX_SPEED_PX_PER_FRAME + DASH_SPEED_INCREASE) {
			speed += ACCELERATION_PX_PER_FRAME;
		}
	} else {
		if (speed < MAX_SPEED_PX_PER_FRAME) {
			speed += ACCELERATION_PX_PER_FRAME;
		}
	}
}

move_wrap(true, true, sprite_width/2);

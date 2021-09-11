   /// @description Insert description here
// You can write your code in this editor

// Check keyboard inputs once per frame
w_key_pressed = keyboard_check(ord("W"));
a_key_pressed = keyboard_check(ord("A"));
s_key_pressed = keyboard_check(ord("S"));
d_key_pressed = keyboard_check(ord("D"));

friction = 0 //Assume no deceleration
moving = false;
if (!w_key_pressed and !a_key_pressed and !s_key_pressed and !d_key_pressed) {
	friction = DECELERATION_PX_PER_FRAME; // Probably needs to change depending on the tile you're on
} else {
	// Decide on goal direction based on keyboard inputs
	var goal_direction_x = 0;
	var goal_direction_y = 0;
	goal_direction = 0;
	
	if w_key_pressed goal_direction_y += 1;
	if a_key_pressed goal_direction_x -= 1;
	if s_key_pressed goal_direction_y -= 1;
	if d_key_pressed goal_direction_x += 1;
	
	if (goal_direction_y != 0 || goal_direction_x != 0) {
		moving = true;
		goal_direction = radtodeg(arctan2(goal_direction_y,goal_direction_x));
	} else
		friction = DECELERATION_PX_PER_FRAME;
	
	// Dashing effectively temporarily increases max speed.
	// If not at max speed, accelerate. 
	apply_vector(object_index, ACCELERATION_PX_PER_FRAME, goal_direction);
	if (dashing) {
		if (speed > MAX_SPEED_PX_PER_FRAME + DASH_SPEED_INCREASE) {
			speed = MAX_SPEED_PX_PER_FRAME + DASH_SPEED_INCREASE;
		}
	} else {
		if (speed > MAX_SPEED_PX_PER_FRAME) {
			speed = MAX_SPEED_PX_PER_FRAME;
		}
	}
}

move_wrap(true, true, sprite_width/2);

wall_collision(object_index);
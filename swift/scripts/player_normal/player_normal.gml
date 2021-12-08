// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_normal(){
	// Check keyboard inputs once per frame
	w_key_pressed = keyboard_check(ord("W"));
	a_key_pressed = keyboard_check(ord("A"));
	s_key_pressed = keyboard_check(ord("S"));
	d_key_pressed = keyboard_check(ord("D"));

	moving = false;

	if (w_key_pressed or a_key_pressed or s_key_pressed or d_key_pressed) {
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
		}
	
		if (moving) {
			apply_vector(object_index, ACCELERATION_PX_PER_FRAME, goal_direction);
		}
	
		if (keyboard_check_pressed(vk_space) and !dashing) {
			if (CURR_DASH >= DASH_UNIT) {
				dashing = true;
				alarm[0] = DASH_TIME;
				CURR_DASH -= DASH_UNIT;
				audio_play_sound(sfx_player_dash, 99, false);
			} else {
				audio_play_sound(sfx_noenergy, 99, false);
			}
		}
		
		if(dashing) {
			// Dashing temporarily increases acceleration
			apply_vector(object_index, DASH_ACCELERATION_INCREASE, goal_direction);
			//Particles
			
			var center = find_sprite_center(id)
			
			instance_create_layer(center[0]+random_range(-10,10),center[1]+random_range(-10,10),"Instances",obj_particle_dash);
			instance_create_layer(center[0]+random_range(-10,10),center[1]+random_range(-10,10),"Instances",obj_particle_dash);
			
		}
		
		// Dashing temporarily removes max speed
		if (phy_speed > MAX_SPEED_PX_PER_FRAME) {	
			if(!dashing) {
				phy_speed_x = MAX_SPEED_PX_PER_FRAME*cos(direction*pi/180);
				phy_speed_y = -MAX_SPEED_PX_PER_FRAME*sin(direction*pi/180);
			} else if (alarm[0] <= DASH_TIME/2) {
				apply_vector(object_index, -ACCELERATION_PX_PER_FRAME, goal_direction);				
			}
		}
	}

	move_wrap(true, true, sprite_width/2);
	
	// alarm[1] == 0 when just respawning from hole
	if (alarm[1] != 0) {
		// check collision with hole objects
		hole = collision_point(x, bbox_bottom, obj_hole, false, true);
		if (hole != noone) {
			res_x = phy_position_xprevious;
			res_y = phy_position_yprevious;
			state = "falling"
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_active = false;
			alarm[1] = 60; //player falls for 2 seconds
		}
	}
}
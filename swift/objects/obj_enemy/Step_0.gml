/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// End step if enemy is already dead
if (CURR_HEALTH <= 0) {
	exit;
}

// Update sprite center
sprite_center = find_sprite_center(id)
sprite_x = sprite_center[0]
sprite_y = sprite_center[1]

move_wrap(true, true, sprite_width/2);

// Call Falling Script as required
if (falling_time > 0) falling();

if (!flying and falling_time == 0) { // If not flying and not falling
	hole_collision_check(); // Check collisions with hole
}

if (alarm[IDLE_SFX_ALARM] == -1) {
	alarm[IDLE_SFX_ALARM] = 200;
}

//Damage Tint
if damage_tint_time > 0 {
	image_blend = make_color_rgb(255-damage_tint_time/damage_tint_time_start*255, 255, 255-damage_tint_time/damage_tint_time_start*255);
	if damage_tint_time = 1 image_blend = c_white;
	draw_self();
	damage_tint_time -= 1;
}

// Prevent rubberbanding due to overshooting target coordinates
if (variable_instance_exists(id, "goal_x")) {
	if (sprite_x <= goal_x + 5 && sprite_x >= goal_x - 5 && sprite_y <= goal_y + 5 && sprite_y >= goal_y - 5) {
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
}

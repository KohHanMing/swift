event_inherited();

if control_enabled player_normal();
if falling_time > 0 falling();

move_wrap(true, true, sprite_width/2);

// Weapon Change
if keyboard_check_pressed(ord("1"))
 or keyboard_check_pressed(ord("2"))
 or keyboard_check_pressed(ord("3"))
 or keyboard_check_pressed(ord("4"))
 or keyboard_check_pressed(ord("5"))
 or keyboard_check_pressed(ord("6")) {
	change_weapon();	
}

// Face Direction based on Weapon Angle
if (weapon_angle > 225 && weapon_angle < 315) facing = "down";
else if (weapon_angle > 45 && weapon_angle < 135) facing = "up";
else if (weapon_angle >= 135 && weapon_angle <= 225) facing = "left";
else facing = "right";

// Sprite Control
sprite_index = asset_get_index("spr_player_" + action + "_" + facing);

// Control Enabled
if current_weapon_id.DISABLES_CONTROL and instance_exists(current_weapon_id.previous_projectile) {
	control_enabled = false;
} else if obj_game.game_paused {
	control_enabled = false;
} else control_enabled = true;

// Exit if Game Paused
if game_paused exit;


// ######## CODE BEYOND THIS LINE DOES NOT EXECUTE ON PAUSE ######## //

// Weapon Cooldowns
if melee_weapon_id.cooldown > 0 melee_weapon_id.cooldown -= 1;
if ranged_weapon_id.cooldown > 0 ranged_weapon_id.cooldown -= 1;

// Swaps
swap_timer -= 1; // swap_timer is reduced by 1 per step.
if global.key_quickswap_pressed attempt_quickswap(); // Attempt Quickswap

// Damage Tint
damage_tint_scale = 0;
if damage_tint_time > 0 {
	damage_tint_scale = damage_tint_time/damage_tint_time_start;
	image_blend = make_color_rgb(255, 255-damage_tint_time/damage_tint_time_start*255, 255-damage_tint_time/damage_tint_time_start*255);
	if damage_tint_time = 1 image_blend = c_white;
	damage_tint_time -= 1;
}

recharge_dash();

audio_listener_position(x,y,0);

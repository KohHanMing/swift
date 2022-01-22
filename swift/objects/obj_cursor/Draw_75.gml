var _x = device_mouse_x_to_gui(0);
var _y = device_mouse_y_to_gui(0);
var _scale = global.gui_height / global.view_h;

if obj_game.game_paused {
	window_set_cursor(cr_default); // Enable normal cursor
	exit;
} else {
	window_set_cursor(cr_none); // Disable normal cursor
}

with(obj_player) {
	
	if swap_timer < SWAP_COOLDOWN - INSTANT_SWAP_MIN and swap_timer > SWAP_COOLDOWN - INSTANT_SWAP_MIN - INSTANT_SWAP_RANGE {
	gpu_set_fog(true,c_lime,0,1); // Tint Lime if shooting enables Instant Swap
	} else if swap_timer > 0 {
		gpu_set_fog(true,c_red,0,1); // Tint Red if weapon cannot be swapped
	}

	with (other) {
		draw_sprite_ext(
			sprite_index,
			image_index,
			_x,
			_y,
			image_xscale * _scale,
			image_yscale * _scale,
			0,
			c_white,
			image_alpha
		);
	}

	gpu_set_fog(false,c_white,0,0); // Reset
	
	if current_weapon_id.cooldown > 0 {

		draw_line_width(
			_x - 8 * _scale,
			_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR) * _scale,
			_x + 8 * _scale,
			_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR) * _scale,
			2 * _scale
		);

		draw_line_width_color(
			_x - 8 * _scale,
			_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR) * _scale,
			_x + 8 * _scale - 16 * current_weapon_id.cooldown/current_weapon_id.ATTACK_COOLDOWN * _scale,
			_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR) * _scale,
			2 * _scale,
			c_lime,
			c_lime
		);

	}
	
}
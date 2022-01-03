/// @description Cursors
// Cursors are drawn over everything else

if swap_timer < SWAP_COOLDOWN - INSTANT_SWAP_MIN and swap_timer > SWAP_COOLDOWN - INSTANT_SWAP_MIN - INSTANT_SWAP_RANGE {
	gpu_set_fog(true,c_lime,0,1); // Tint Lime if shooting enables Instant Swap
} else if swap_timer > 0 {
	gpu_set_fog(true,c_red,0,1); // Tint Red if weapon cannot be swapped
}

draw_sprite(current_weapon_id.SPR_WEAPON_CROSSHAIR,0,mouse_x,mouse_y);

gpu_set_fog(false,c_white,0,0); // Reset

if current_weapon_id.cooldown > 0 {

	draw_line_width(
		mouse_x - 8,
		mouse_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR),
		mouse_x + 6,
		mouse_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR),
		2
	);

	draw_line_width_color(
		mouse_x - 8,
		mouse_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR),
		mouse_x + 6 - 16 * current_weapon_id.cooldown/current_weapon_id.ATTACK_COOLDOWN,
		mouse_y + sprite_get_height(current_weapon_id.SPR_WEAPON_CROSSHAIR),
		2,
		c_lime,
		c_lime
	);

}
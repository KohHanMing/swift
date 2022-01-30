/// @description Draw GUI

global.gui_factor = global.gui_height/global.view_h;

var _mouse_angle = point_direction(global.gui_width/2, global.gui_height/2, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0));

if !instance_exists(obj_player) exit;

// Draw UI Base
draw_sprite(spr_ui_base,0,UI_BASE_ANCHOR[0],UI_BASE_ANCHOR[1]);

// Create Mask
gpu_set_blendenable(false); // Disable Blending
gpu_set_colorwriteenable(false,false,false,true); // Enable only alpha channel to protect application surface
draw_set_alpha(0); // Set alpha to 0
draw_rectangle(0,0, global.gui_width,global.gui_height, false); // Draw an alpha 0 rectangle over the entire application surface
draw_set_alpha(1); // Reset alpha to 1
draw_sprite(spr_ui_base_mask,0,UI_BASE_ANCHOR[0],UI_BASE_ANCHOR[1]); // The mask area now has alpha of 1
gpu_set_blendenable(true); // Return to normal blending
gpu_set_colorwriteenable(true,true,true,true); // Return to normal color write

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); // Destination Alpha Mode
gpu_set_alphatestenable(true); // Read alpha from screen instead of from sprite

// Health
health_display = lerp(health_display,obj_player.CURR_HEALTH,0.5)
var health_display_width = (health_display/obj_player.MAX_HEALTH) * HEALTH_BAR_LENGTH
draw_sprite_part(spr_ui_health,0,0,0,health_display_width,sprite_get_height(spr_ui_health),HEALTH_BAR_ANCHOR[0],HEALTH_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_health,0,HEALTH_BAR_LENGTH,0,HEALTH_BAR_END_LENGTH,sprite_get_height(spr_ui_health),HEALTH_BAR_ANCHOR[0]+health_display_width,HEALTH_BAR_ANCHOR[1]);

// Energy
energy_display = lerp(energy_display,obj_player.CURR_ENERGY,0.5)
var energy_display_width = (energy_display/obj_player.MAX_ENERGY) * ENERGY_BAR_LENGTH
draw_sprite_part(spr_ui_energy,0,0,0,energy_display_width,sprite_get_height(spr_ui_energy),ENERGY_BAR_ANCHOR[0],ENERGY_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_energy,0,ENERGY_BAR_LENGTH,0,ENERGY_BAR_END_LENGTH,sprite_get_height(spr_ui_energy),ENERGY_BAR_ANCHOR[0]+energy_display_width,ENERGY_BAR_ANCHOR[1]);

// Dash
dash_display = lerp(dash_display,obj_player.CURR_DASH,0.5)
var dash_display_width = (dash_display/obj_player.MAX_DASH) * DASH_BAR_LENGTH
draw_sprite_part(spr_ui_dash,0,0,0,dash_display_width,sprite_get_height(spr_ui_dash),DASH_BAR_ANCHOR[0],DASH_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_dash,0,DASH_BAR_LENGTH,0,DASH_BAR_END_LENGTH,sprite_get_height(spr_ui_dash),DASH_BAR_ANCHOR[0]+dash_display_width,DASH_BAR_ANCHOR[1]);

// Restore Normal Drawing
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);


// Weapon Display
draw_sprite(spr_weapon_display,0,MELEE_WEAPON_DISPLAY_ANCHOR[0],MELEE_WEAPON_DISPLAY_ANCHOR[1]);
var display_center = [MELEE_WEAPON_DISPLAY_ANCHOR[0]+128,MELEE_WEAPON_DISPLAY_ANCHOR[1]+64];
weapon_display(obj_player.equipped_melee_weapon_info[? "weapon_display"], 1, display_center);

draw_sprite(spr_weapon_display,0,RANGED_WEAPON_DISPLAY_ANCHOR[0],RANGED_WEAPON_DISPLAY_ANCHOR[1]);
var display_center = [RANGED_WEAPON_DISPLAY_ANCHOR[0]+128,RANGED_WEAPON_DISPLAY_ANCHOR[1]+64];
weapon_display(obj_player.equipped_ranged_weapon_info[? "weapon_display"], 1, display_center);

if (obj_game.game_paused) {
	exit;
}

/*

Any code past this point is ignored when game is paused

*/

// Weapon Wheel
if (global.key_change_weapon_down) {
	// draw_sprite_ext(spr_weapon_wheel_base, 0, global.gui_width/2, global.gui_height/2, global.gui_factor, global.gui_factor, 0, c_white, 1);
	
	var _melee_weapons = obj_player.unlocked_melee_weapons;
	var _size = ds_list_size(_melee_weapons);
	var _sector_width = 180/_size;
	
	for (var i = 0; i < _size; i++) { // Loop through unlocked melee weapons
		var _angle = 90 - _sector_width * (i + 0.5); // Get angular position of current weapon
		if (abs(angle_difference(_mouse_angle, _angle)) < _sector_width/2) { // If mouse is within selection sector
			weapon_wheel_selected(_melee_weapons[|i], _angle);
		} else {
			weapon_wheel_unselected(_melee_weapons[|i], _angle);
		}
	}
	
	var _ranged_weapons = obj_player.unlocked_ranged_weapons;
	var _size = ds_list_size(_ranged_weapons);
	var _sector_width = 180/_size;
	
	for (var i = 0; i < _size; i++) { // Loop through unlocked ranged weapons
		var _angle = 90 + _sector_width * (i + 0.5); // Get angular position of current weapon
		if (abs(angle_difference(_mouse_angle, _angle)) < _sector_width/2) { // If mouse is within selection sector
			weapon_wheel_selected(_ranged_weapons[|i], _angle);
		} else {
			weapon_wheel_unselected(_ranged_weapons[|i], _angle);
		}
	}
	
	var _selector_position = weapon_wheel_position(40 * global.gui_factor, weapon_selector_angle);
	draw_sprite_ext(
		spr_weapon_wheel_selector,
		0,
		_selector_position[0],
		_selector_position[1],
		global.gui_factor,
		global.gui_factor,
		weapon_selector_angle,
		c_white,
		1
	);
	
}
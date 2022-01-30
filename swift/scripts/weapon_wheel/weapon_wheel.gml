function weapon_wheel_position(_distance, _angle) {
	var _x = global.gui_width/2 + lengthdir_x(_distance,_angle);
	var _y = global.gui_height/2 + lengthdir_y(_distance,_angle);
	return [_x, _y];
}

function weapon_wheel_selected(_weapon_info, _angle) {
	var _weapon_display = _weapon_info[? "weapon_display"]; // Get weapon_display of current weapon
	var _position = weapon_wheel_position(WEAPON_WHEEL_DISTANCE, _angle);
	weapon_wheel_display(_weapon_display, 1.25, _position);
	
	weapon_selector_angle -= angle_difference(weapon_selector_angle, _angle) * 0.25;
	weapon_wheel_weapon = _weapon_info[? "weapon"];
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(font_menu);
	draw_text_transformed(
		global.gui_width/2,
		PADDING,
		_weapon_info[? "weapon_name"],
		global.gui_factor,
		global.gui_factor,
		0
	);
	
}

function weapon_wheel_unselected(_weapon_info, _angle) {
	var _weapon_display = _weapon_info[? "weapon_display"]; // Get weapon_display of current weapon
	var _position = weapon_wheel_position(WEAPON_WHEEL_DISTANCE, _angle);
	weapon_wheel_display(_weapon_display, 1, _position);
}
///@function weapon_wheel_display(_sprite,display_center)
///@param {sprite_index} _sprite
///@param {scale} _scale
///@param {[x,y]} _display_center
// Weapon Display Function

function weapon_wheel_display(_sprite, _scale, _display_center){
	_scale *= global.gui_factor;
	var _display_width = _scale * sprite_get_width(_sprite);
	var _display_height = _scale * sprite_get_height(_sprite);
	
	draw_sprite_stretched(
		_sprite,
		0,
		_display_center[0] - _display_width/2,
		_display_center[1] - _display_height/2,
		_display_width,
		_display_height
	);
}
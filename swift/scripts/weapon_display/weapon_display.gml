///@function weapon_display(_sprite,display_center)
///@param {sprite_index} _sprite
///@param {[x,y]} _display_center
// Weapon Display Function

function weapon_display(_sprite,display_center){
	var display_height = 64;
	var display_width = display_height/sprite_get_height(_sprite) * sprite_get_width(_sprite);

	draw_sprite_stretched(_sprite,0,display_center[0]-display_width/2,display_center[1]-display_height/2,display_width,display_height);
}
///@function find_sprite_center(_object)
///@param {id} _object
///@description Returns [x,y]

function find_sprite_center(_inst){
	return [x - sprite_get_xoffset(sprite_index) + sprite_width / 2, y - sprite_get_yoffset( sprite_index) + sprite_height / 2];
}

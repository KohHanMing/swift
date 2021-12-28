/// @function create_following_light(_color,_light_size,_inst)
/// @param {id} id of instance to follow
/// @param {color} [R,G,B] from 0.0 - 1.0
/// @param {light_size} Size of Light

function create_following_light(_inst,_color,_light_size){
	var light = instance_create_layer(x, y, "Instances", obj_light);
	with(light) {
		owner = _inst;
		light_color = _color;
		light_size = _light_size;
		has_owner = true;
	}
}
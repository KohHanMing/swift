///@function instance_collision(_object)
///@param {index} _object

function instance_collision(_object) {
	var hit_list = ds_list_create();
	hit_count = instance_place_list(_object.x, _object.y, obj_pushable, hit_list, true);
	currspd = _object.speed;
	currdir = _object.direction;
	currmass = _object.mass/hit_count;
	repeat (hit_count) {
		apply_vector(ds_list_find_value(hit_list, 0), currspd, currdir, currmass);
		apply_vector(_object, -currspd, currdir, currmass);
		ds_list_delete(hit_list, 0);
	}
}
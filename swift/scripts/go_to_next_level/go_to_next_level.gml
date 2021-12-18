// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_next_level(){
	var next_level = obj_level_manager.current_level + 1;
	if (next_level < ds_list_size(obj_level_manager.level_sequence_list)) {
		obj_level_manager.current_level = next_level;
		obj_level_manager.current_level_complete = pointer_null;
		room_goto(ds_list_find_value(obj_level_manager.level_sequence_list, next_level));
	}
}
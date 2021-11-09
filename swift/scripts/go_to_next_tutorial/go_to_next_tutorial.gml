// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_next_tutorial(){
	var next_tutorial = obj_tutorial_manager.current_tutorial + 1;
	if (next_tutorial < ds_list_size(obj_tutorial_manager.tutorial_sequence_list)) {
		obj_tutorial_manager.current_tutorial = next_tutorial;
		obj_tutorial_manager.is_visible = true;
		room_goto(rm_tutorial);
	}
}
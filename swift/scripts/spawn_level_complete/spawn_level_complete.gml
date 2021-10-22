// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_level_complete(_level){
	if (_level == 2) {
		instance_create_layer(1215, 190, "Instances", obj_level_complete);
	} else if (_level == 3) {
		instance_create_layer(607, 352, "Instances", obj_level_complete);
	} else if (_level == 4) {
		instance_create_layer(255, 415, "Instances", obj_level_complete);
	} else if (_level == 5) {
		instance_create_layer(960, 350, "Instances", obj_level_complete);
	} else if (_level == 6) {
		instance_create_layer(545, 670, "Instances", obj_level_complete);
	}
}
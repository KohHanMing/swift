/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player)) {
	if (!pressed) {
		image_index = 1;
		for (var i = 0; i < array_length(control); i++) {
			toggle_obj(control[i]);
		}
	}
	pressed = true;
} else {
	if (pressed) {
		image_index = 0;
	}
	pressed = false;
}
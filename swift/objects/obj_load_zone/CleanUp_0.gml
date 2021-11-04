/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(waves);
for (var i = 0; i < array_length(enemy_ids); i++) {
	ds_list_destroy(enemy_ids[i]);
}

if (is_level_complete) {
	spawn_level_complete(obj_game.CURR_LEVEL);
}
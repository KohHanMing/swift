/// @description Insert description here
// You can write your code in this editor

/*
var enemy = instance_create_layer(SPAWN_X, SPAWN_Y, "Instances", ENEMY_STORED);

ds_list_add(LOAD_ZONE.enemy_ids[LOAD_ZONE.current_wave], enemy);
*/
instance_activate_object(CURR_ENEMY);
instance_destroy();

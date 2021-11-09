/// @description Set Up
// You can write your code in this editor

#macro WAVE 0
#macro TYPE 1
#macro SPAWN 2
#macro DELAY 3

triggered = false;
timer = 0;
current_wave = 0;
total_waves = -1;
waves = ds_list_create();
enemy_ids = ds_list_create();

trigger_doors = true;

is_level_complete = true;

has_destroyed_marker = false; //hackyyyy change pls
marker = instance_create_layer(x + sprite_width/2, y + sprite_height/2, "Instances", obj_checkpoint_marker);

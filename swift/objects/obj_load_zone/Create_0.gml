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

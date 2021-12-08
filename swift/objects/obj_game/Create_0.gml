/// @description Insert description here
// You can write your code in this editor

instance_create_layer(0,0,"Instances",obj_soundtrack_manager);
instance_create_layer(0,0,"Instances",obj_level_manager);
instance_create_layer(0,0,"Instances",obj_tutorial_manager);
go_to_next_tutorial();

// Pause Init
paused_surf = -1;
paused = false;

// Initialize Weapons
equipped_melee_weapon = obj_blade;
equipped_ranged_weapon = obj_honey_badger;
update_equipped_weapons(); // Run Update Equipped Weapons event.

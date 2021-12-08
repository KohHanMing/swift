/// @description Game Initialization

// Window Size
display_set_gui_size(2560,1440);
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
surface_resize(application_surface, global.gui_width, global.gui_height)

instance_create_layer(0,0,"Instances",obj_soundtrack_manager);
instance_create_layer(0,0,"Instances",obj_level_manager);
instance_create_layer(0,0,"Instances",obj_tutorial_manager);
go_to_next_tutorial();

// Pause Init
paused_surf = -1;
paused = false;

// Initialize Weapons
equipped_melee_weapon = obj_blade;
equipped_ranged_weapon = obj_weapon_ranged;
update_equipped_weapons(); // Run Update Equipped Weapons event.

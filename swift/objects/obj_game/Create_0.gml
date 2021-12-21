/// @description Game Initialization

// Window Size
display_set_gui_size(2560,1440);
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
surface_resize(application_surface, global.gui_width, global.gui_height)

game_management_layer = layer_create(-12000,"Game Management");
instance_create_layer(0,0,game_management_layer,obj_ui);
instance_create_layer(0,0,game_management_layer,obj_level_manager);
instance_create_layer(0,0,game_management_layer,obj_tutorial_manager);
instance_create_layer(200,200,game_management_layer,obj_camera);
go_to_next_tutorial();

// Pause Init
paused_surf = -1;
paused = false;

// Initialize Weapons
equipped_melee_weapon = obj_blade;
equipped_ranged_weapon = obj_honey_badger;
update_equipped_weapons(); // Run Update Equipped Weapons event.

// Lighting Engine (in order of rendering)
instance_create_depth(0,0,50,obj_lighting_engine_floor); // Floor Lighting
instance_create_depth(0,0,-9000,obj_silhouette); // Create Silhouette Drawer
instance_create_depth(0,0,-10000,obj_lighting_engine_wall); // Wall Lighting

// Set Ambient Darkness
ambient_darkness = 0.5; // 0.0 (Full Bright) - 1.0 (Full Dark)
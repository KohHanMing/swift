/// @description Game Initialization

// Window Size
display_set_gui_size(2560,1440);
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
surface_resize(application_surface, global.gui_width, global.gui_height)

// Remove Cursor
window_set_cursor(cr_none)

game_management_layer = layer_create(-12000,"Game Management");
instance_create_layer(0,0,game_management_layer,obj_ui);
instance_create_layer(0,0,game_management_layer,obj_level_manager);
instance_create_layer(200,200,game_management_layer,obj_camera);

go_to_next_level(); // Start Game

// Pause Init
game_paused_surf = -1;
game_paused = false;
game_paused_instances = [];

// Lighting Engine (in order of rendering)
instance_create_depth(0,0,50,obj_lighting_engine); // Lighting Engine
instance_create_depth(0,0,-9000,obj_silhouette); // Create Silhouette Drawer

// Initialize Player
instance_create_layer(0,0,"Instances",obj_player);
instance_create_layer(0,0,game_management_layer,obj_cursor);

// Set Ambient Darkness
ambient_darkness = 0.75; // 0.0 (Full Bright) - 1.0 (Full Dark)
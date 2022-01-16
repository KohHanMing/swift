///@description Runs when the app is first started.

// Methods

// Provide Global Values for Viewport
function provide_global_viewport_values() {
	global.view_x = camera_get_view_x(view_camera[0]);
	global.view_y = camera_get_view_y(view_camera[0]);
	global.view_w = camera_get_view_width(view_camera[0]);
	global.view_h = camera_get_view_height(view_camera[0]);
}

// Window Size
display_set_gui_size(2560,1440);
global.gui_width = display_get_gui_width();
global.gui_height = display_get_gui_height();
surface_resize(application_surface, global.gui_width, global.gui_height)
provide_global_viewport_values();
	
instance_create_layer(0,0,"Instances",obj_soundtrack_manager); // Create Soundtrack Manager
instance_create_layer(0,0,"Instances",obj_menu_manager); // Create Menu Manager
instance_create_layer(0,0,"Instances",obj_input_manager); // Create Input Manager
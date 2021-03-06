// Methods

function create_menu(_menu_state) {
	
	var _size = ds_list_size(global.MENU_ELEMENTS);
	for (var i=0;i<_size;i++) {
		with(ds_list_find_value(global.MENU_ELEMENTS,i)) instance_destroy(); // Delete previous menu
	}
	ds_list_empty(global.MENU_ELEMENTS);
	
	menu_state_prev = _menu_state; // Update menu_state_prev
	
	// Create Menu Elements
	var total_width = 0; // For alignment later
	var vertical_offset = 0; // For alignment later
	
	// Loop through ds_list
	var element_count = ds_list_size(_menu_state);
	for (var i=0;i<element_count;i++) {
		
		var element = ds_list_find_value(_menu_state,i);
		
		switch(element[0]) {
			
			case "TEXT":	
				var _new_element = instance_create_depth(0,vertical_offset,-12000,obj_menu_text);
				
				_new_element.text = element[1];
				
				break;
				
			case "SPACER":
				var _new_element = instance_create_depth(0,vertical_offset,-12000,obj_menu_spacer);
				
				_new_element.image_yscale = element[1];
				
				break;
			
			case "BUTTON":
				var _new_element = instance_create_depth(0,vertical_offset,-12000,obj_menu_button);
				
				_new_element.text = element[1];
				_new_element.on_click = element[2];
				if element[2] == "CHANGE_MENU" _new_element.target = element[3];
				
				_new_element.image_xscale = 3;
				
				break;
				
			case "SLIDER":
				var _new_element = instance_create_depth(0,vertical_offset,-12000,obj_menu_slider);
				
				_new_element.text = element[1];
				_new_element.slider_min = element[2];
				_new_element.slider_max = element[3];
				_new_element.display_type = element[4];
				_new_element.variable_name = element[5];
				_new_element.handler = element[6];
				
				with(_new_element) update_slider_value();
				
				_new_element.image_xscale = 5;
				
				break;
			
			case "KEYBIND":
				var _new_element = instance_create_depth(0,vertical_offset,-12000,obj_menu_keybind);
				
				_new_element.text = element[1];
				_new_element.keybind = element[2];
				_new_element.keybind_mode = element[2] + "_mode";
				
				_new_element.image_xscale = 5;
				_new_element.image_yscale = 0.75;
				
				break;
			
		}
		
		total_width = max(total_width,_new_element.bbox_right); // Check for maximum width
		vertical_offset += _new_element.sprite_height + PADDING; // Calculate where to draw next button
		
	}
	
	var horizontal_align_adjustment = (camera_get_view_width(view_camera[0]) - total_width) / 2; // Horizontally center menu
	
	var total_height = vertical_offset - PADDING; // Total menu height
	var vertical_align_adjustment = (camera_get_view_height(view_camera[0]) - total_height) / 2; // Vertically center menu
	
	// Offset Menu Elements accordingly
	var _size = ds_list_size(global.MENU_ELEMENTS);
	for (var i=0;i<_size;i++) {
		with(ds_list_find_value(global.MENU_ELEMENTS,i)) {
			offset_x = x + horizontal_align_adjustment + (total_width-sprite_width)/2; // Horizontally center self
			offset_y = y + vertical_align_adjustment;
			update_position();
		} 
	}
	
	// Append Current Menu to List
	if menu_state == NONE ds_list_clear(menu_list);
	else if ds_list_find_value(menu_list, ds_list_size(menu_list)-1) != menu_state ds_list_add(menu_list,menu_state);
	
}

function return_to_previous_menu() { // Back Button
	
	if menu_state == NONE return;
	else if menu_state == START_MENU return;
	else if menu_state == PAUSE_MENU {
		menu_state = NONE;
		with (obj_game) unpause_game();
		return;
	}
	menu_state = ds_list_find_value(menu_list,ds_list_size(menu_list)-2);
	ds_list_delete(menu_list,ds_list_size(menu_list)-1);
	
}

// Menu List
menu_list = ds_list_create();

// No Menu
NONE = ds_list_create();

START_MENU = ds_list_create();
PAUSE_MENU = ds_list_create();
OPTIONS_MENU = ds_list_create();
CONTROLS_MENU = ds_list_create();
CREDITS = ds_list_create();

// Start Menu
menu_add_text(START_MENU, "SWIFT");
menu_add_button(START_MENU, "START", "START_GAME");
menu_add_button(START_MENU, "OPTIONS", "CHANGE_MENU", OPTIONS_MENU);
menu_add_button(START_MENU, "CREDITS", "CHANGE_MENU", CREDITS);

// Pause Menu
menu_add_text(PAUSE_MENU, "GAME PAUSED");
menu_add_button(PAUSE_MENU, "UNPAUSE", "UNPAUSE");
menu_add_button(PAUSE_MENU, "OPTIONS", "CHANGE_MENU", OPTIONS_MENU);

// Options 
menu_add_text(OPTIONS_MENU, "OPTIONS");
menu_add_slider(OPTIONS_MENU, "MUSIC", 0, 1, "PERCENTAGE", "soundtrack_volume", "update_soundtrack_volume");
menu_add_slider(OPTIONS_MENU, "SOUNDS", 0, 1, "PERCENTAGE", "sfx_volume", "update_sfx_volume");
menu_add_spacer(OPTIONS_MENU, 8);
menu_add_button(OPTIONS_MENU, "CONTROLS", "CHANGE_MENU", CONTROLS_MENU);
menu_add_button(OPTIONS_MENU, "BACK", "LAST_MENU");

// Controls Menu
menu_add_text(CONTROLS_MENU, "CONTROLS");
menu_add_keybind(CONTROLS_MENU, "ATTACK", "key_attack");
menu_add_keybind(CONTROLS_MENU, "MOVE UP", "key_move_up");
menu_add_keybind(CONTROLS_MENU, "MOVE LEFT", "key_move_left");
menu_add_keybind(CONTROLS_MENU, "MOVE DOWN", "key_move_down");
menu_add_keybind(CONTROLS_MENU, "MOVE RIGHT", "key_move_right");
menu_add_keybind(CONTROLS_MENU, "DASH", "key_dash");
menu_add_keybind(CONTROLS_MENU, "QUICKSWAP", "key_quickswap");
menu_add_spacer(CONTROLS_MENU, 8);
menu_add_button(CONTROLS_MENU, "BACK", "LAST_MENU");

// Credits
menu_add_text(CREDITS, "CREDITS");
menu_add_button(CREDITS, "BACK", "LAST_MENU");

menu_state = START_MENU; // Keeps track of current menu
menu_state_prev = NONE; // Keeps track of whether menu change has been done

// Initialize Variables
global.MENU_ELEMENTS = ds_list_create();
PADDING = 0; // Vertical Padding Between Buttons
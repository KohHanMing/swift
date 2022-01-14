// PROGRAM MENUS HERE

/* Documentation
		Button Object
		["BUTTON", TEXT, FUNCTION, SIZE_PRESET]
*/

// No Menu
NONE = ds_list_create();

// Start Menu
START_MENU = ds_list_create();
ds_list_add(START_MENU, ["BUTTON", "START", "START_GAME"]);
ds_list_add(START_MENU, ["BUTTON", "OPTIONS", "OPTIONS"]);

// Pause Menu
PAUSE_MENU = ds_list_create();
ds_list_add(PAUSE_MENU, ["BUTTON", "UNPAUSE", "CLOSE_MENU"]);
ds_list_add(PAUSE_MENU, ["BUTTON", "OPTIONS", "OPTIONS"]);

menu_state = START_MENU; // Keeps track of current menu
menu_state_prev = -1; // Keeps track of whether menu change has been done


// Initialize Variables
global.MENU_ELEMENTS = ds_list_create();
PADDING = 0; // Vertical Padding Between Buttons

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
	
			case "BUTTON":
				var _new_element = instance_create_layer(0,vertical_offset,"Instances",obj_menu_button);
				_new_element.text = element[1];
				_new_element.on_click = element[2];
				_new_element.image_xscale = 3;
				break;
	
		}
		
		total_width = max(total_width,_new_element.bbox_right); // Check for maximum width
		vertical_offset += _new_element.sprite_height + PADDING; // Calculate where to draw next button
		
		
	}
	
	var horizontal_align_adjustment = (480 - total_width) / 2; // Horizontally center menu
	
	var total_height = vertical_offset - PADDING; // Total menu height
	var vertical_align_adjustment = (270 - total_height) / 2; // Vertically center menu
	
	// Offset Menu Elements accordingly
	var _size = ds_list_size(global.MENU_ELEMENTS);
	for (var i=0;i<_size;i++) {
		with(ds_list_find_value(global.MENU_ELEMENTS,i)) {
			x += horizontal_align_adjustment; // Adjust horizontal position
			y += vertical_align_adjustment; // Adjust vertical position
		} 
	}
	
	
}
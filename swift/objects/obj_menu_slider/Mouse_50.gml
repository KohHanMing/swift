if adjusting { // Only change when adjustment is active
	// Obtain Mouse Position relative to slider clamped to the edges of the slider including padding
	// and map width of slider to slider_min - slider_max range
	
	var mouse_clamped_x = min(max(mouse_x,x+slider_padding),x+sprite_width-slider_padding); // Clamp mouse position
	var slider_range = slider_max - slider_min; // Slider Range
	var slider_width = sprite_width - 2 * slider_padding // Width of sliding area
	value = slider_min + (mouse_clamped_x-x-slider_padding)/slider_width * slider_range;
	
	variable_global_set(variable_name,value);
	// slider_changed(handler);
	
}
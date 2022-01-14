if adjusting { // Only change when adjustment is active
	// Obtain Mouse Position relative to slider clamped to the edges of the slider
	// and map width of slider to slider_min - slider_max range
	var mouse_clamped_x = min(max(mouse_x,x+slider_padding),x+sprite_width-slider_padding);
	var slider_range = slider_max - slider_min;
	var slider_width = sprite_width - 2 * slider_padding
	value = round(slider_min + (mouse_clamped_x-x-slider_padding)/slider_width * slider_range);
}
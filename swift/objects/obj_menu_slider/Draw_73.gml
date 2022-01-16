draw_self();

draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (display_type) {
	
	case "NORMAL": // Display Value
		draw_text(x+sprite_width/2,y+sprite_height/2+text_offset,text + ": " + string(value));
		break;
	
	case "PERCENTAGE": // Display as Percentage
		var percentage = round(value/(slider_max-slider_min) * 100);
		draw_text(x+sprite_width/2,y+sprite_height/2+text_offset,text + ": " + string(percentage)+" %");
		break;
	
}

var proportion = value / (slider_max - slider_min); // Position of slider from 0.0 to 1.0
var slider_adjuster_width = sprite_get_width(spr_menu_slider_adjuster) // Width of Slider Adjuster
var slider_width = sprite_width - 2 * slider_padding; // Width of sliding area
draw_sprite_stretched ( // Draw Slider Adjuster
	spr_menu_slider_adjuster, // Sprite Index
	0, // Subimage
	x + slider_padding + proportion * slider_width - slider_adjuster_width/2,
	y,
	slider_adjuster_width,
	sprite_height // Stretch vertically to fit slider
);
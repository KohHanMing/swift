/// @description Insert description here
// You can write your code in this editor
draw_self();
if (is_displaying_tooltip) {
	draw_set_font(font_large);
	draw_text_ext_transformed(x - MAX_TEXT_WIDTH_IN_PX / 2 + sprite_width / 2, y - TOOLTIP_HEIGHT, TOOLTIP_CONTENT, string_height(TOOLTIP_CONTENT),  MAX_TEXT_WIDTH_IN_PX * SCALE_FACTOR,1/ SCALE_FACTOR,1/SCALE_FACTOR,0);	
	draw_set_font(font_medium);
}
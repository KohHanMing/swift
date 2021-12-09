/// @description Insert description here
// You can write your code in this editor
draw_self();
if (is_displaying_tooltip) {
	draw_set_font(font_large);
	/*
		Content and line breaks decided wrt font size
		Thereafter scaled down and centred wrt display size
	*/
	draw_text_ext_transformed(x + TEXT_OFFSET_X, y + TEXT_OFFSET_Y, TOOLTIP_CONTENT, string_height(TOOLTIP_CONTENT),  FONT_MAX_TEXT_WIDTH_IN_PX, FONT_TO_DISPLAY_SCALE_FACTOR, FONT_TO_DISPLAY_SCALE_FACTOR, 0);	
	draw_set_font(font_medium);
	
	if (SPRITE_CONTENT != pointer_null) {
		draw_sprite(spr_tooltip_imgbox, 0 , x + IMGBOX_OFFSET_X, y + IMGBOX_OFFSET_Y);
		draw_sprite_ext(SPRITE_CONTENT, 0 , x + IMG_OFFSET_X, y + IMG_OFFSET_Y, IMG_SCALE, IMG_SCALE, 0, c_white, 1);	
	}
}
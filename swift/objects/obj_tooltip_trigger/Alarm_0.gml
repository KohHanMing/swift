/// @description End create
// You can write your code in this editor

//Text transformations
DISPLAY_TOOLTIP_HEIGHT = string_height_ext(TOOLTIP_CONTENT, string_height(TOOLTIP_CONTENT), DISPLAY_MAX_TEXT_WIDTH_IN_PX) / 2;

//Offsets
if (SPRITE_CONTENT != pointer_null) {
	IMG_MAX_DIMENSIONS_IN_PX = 32;
	CONTENT_PADDING = 8;
	IMGBOX_PADDING = (sprite_get_width(spr_tooltip_imgbox) -  IMG_MAX_DIMENSIONS_IN_PX) / 2;
	
	//Includes sprite transformations
	DISPLAY_MAX_WIDTH_IN_PX = DISPLAY_MAX_TEXT_WIDTH_IN_PX + CONTENT_PADDING + sprite_get_width(spr_tooltip_imgbox);
	TEXT_OFFSET_X = sprite_width / 2 - DISPLAY_MAX_WIDTH_IN_PX / 2;
	TEXT_OFFSET_Y = - DISPLAY_TOOLTIP_HEIGHT;
	IMGBOX_OFFSET_X = DISPLAY_MAX_TEXT_WIDTH_IN_PX + CONTENT_PADDING + TEXT_OFFSET_X ;
	IMGBOX_OFFSET_Y = - DISPLAY_TOOLTIP_HEIGHT;
	if (sprite_get_width(SPRITE_CONTENT) >= sprite_get_height(SPRITE_CONTENT)) {
		IMG_SCALE = IMG_MAX_DIMENSIONS_IN_PX / sprite_get_width(SPRITE_CONTENT)
	} else {
		IMG_SCALE = IMG_MAX_DIMENSIONS_IN_PX / sprite_get_height(SPRITE_CONTENT)
	}
	SPRITE_OFFSET_SCALED_X = sprite_get_xoffset(SPRITE_CONTENT) * IMG_SCALE;
	SPRITE_OFFSET_SCALED_Y = sprite_get_yoffset(SPRITE_CONTENT) * IMG_SCALE;
	IMG_OFFSET_X = IMGBOX_OFFSET_X + (SPRITE_OFFSET_SCALED_X   + IMGBOX_PADDING);
	IMG_OFFSET_Y = IMGBOX_OFFSET_Y + (SPRITE_OFFSET_SCALED_Y + IMGBOX_PADDING);
} else {
	DISPLAY_MAX_WIDTH_IN_PX = DISPLAY_MAX_TEXT_WIDTH_IN_PX;
	TEXT_OFFSET_X = sprite_width / 2 - DISPLAY_MAX_WIDTH_IN_PX / 2;
	TEXT_OFFSET_Y = - DISPLAY_TOOLTIP_HEIGHT;
}

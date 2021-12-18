/// @description Insert description here
// You can write your code in this editor

PROMPT = instance_create_layer(x + sprite_width, y, "Instances", obj_tooltip_prompt);
TOOLTIP_CONTENT = "Lorem Ipsum dolor sin amet";
SPRITE_CONTENT = pointer_null;
is_displaying_tooltip = false;

/*	
	There are 2 reference points
	Some require calculations wrt display size
	Others require calcualtions wrt to font size
	They have been separated below
*/

//Transformation constants
DISPLAY_TO_FONT_SCALE_FACTOR = 2.5; // Use this formula: Display_Size * Scale_Factor = Font_Size
FONT_TO_DISPLAY_SCALE_FACTOR = 1/ DISPLAY_TO_FONT_SCALE_FACTOR;

DISPLAY_MAX_TEXT_WIDTH_IN_PX = 128;
FONT_MAX_TEXT_WIDTH_IN_PX = DISPLAY_MAX_TEXT_WIDTH_IN_PX * DISPLAY_TO_FONT_SCALE_FACTOR;

alarm[0] = 1;

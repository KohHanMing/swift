/// @description Insert description here
// You can write your code in this editor
PROMPT = instance_create_layer(x + sprite_width, y, "Instances", obj_tooltip_prompt);
TOOLTIP_CONTENT = "Lorem Ipsum dolor sin amet";
SCALE_FACTOR = 2.5;
MAX_TEXT_WIDTH_IN_PX = 128;
TOOLTIP_HEIGHT = string_height_ext(TOOLTIP_CONTENT, string_height(TOOLTIP_CONTENT), MAX_TEXT_WIDTH_IN_PX * SCALE_FACTOR)
is_displaying_tooltip = true;
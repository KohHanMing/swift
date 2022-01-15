// Inherit the parent event
event_inherited();

text = "";
slider_padding = 8;
display_type = "NORMAL";

text_offset = 0;
slider_min = 0;
slider_max = 0;

value = 0;
variable_name = "";

adjusting = false; // Boolean for whether slider is currently being adjusted

function update_slider_value() {
	if variable_global_exists(variable_name) value = variable_global_get(variable_name);
}
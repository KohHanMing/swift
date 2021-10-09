/// @description Insert description here
// You can write your code in this editor
if (triggered) {
	var str = "remaining: ";
	for (var i = 0; i < array_length(remaining); i++) {
		str += string(remaining[i]) + "|";
	}
	draw_text(25, 625, 
	str
	+ "\nwaves total: " + string(total_waves)
	+ "\ncurrent wave: " + string(current_wave)
	);
}

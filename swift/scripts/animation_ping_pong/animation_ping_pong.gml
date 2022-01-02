function next_frame() {
    return image_index + image_speed * sprite_get_speed(sprite_index) / (sprite_get_speed_type(sprite_index) == spritespeed_framespergameframe ? 1 : game_get_speed(gamespeed_fps));
}

function animation_ping_pong() {
	var next = next_frame();
	if (next >= image_number || next < 0) {
	    image_speed *= -1
	}
}
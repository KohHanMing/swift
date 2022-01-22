// Align to Owner

light_size = (1 - light_flicker) * light_size_anchor + light_flicker * light_size_anchor * sin( light_flicker_frequency * current_time/room_speed )

if instance_exists(owner) {
	center = find_sprite_center(owner);
	x = center[0];
	y = center[1];
} else if has_owner = true {
	light_size_anchor -= 0.5; // Light starts fading
	if light_size_anchor <= 0 instance_destroy(); // Destroy light after fading
}
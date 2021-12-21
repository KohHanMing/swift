// Align to Owner

if instance_exists(owner) {
	center = find_sprite_center(owner);
	x = center[0];
	y = center[1];
	has_owner = true;
} else if has_owner = true {
	light_size -= 0.5; // Light starts fading
	if light_size <= 0 instance_destroy(); // Destroy light after fading
}
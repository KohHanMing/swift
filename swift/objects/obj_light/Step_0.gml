// Align to Owner

if instance_exists(owner) {
	center = find_sprite_center(owner);
	x = center[0];
	y = center[1];
	has_owner = true;
} else if has_owner = true instance_destroy();
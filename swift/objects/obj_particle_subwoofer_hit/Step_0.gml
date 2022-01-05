image_alpha = lerp(image_alpha,0,0.05);
if image_alpha <= 0.1 instance_destroy();

if instance_exists(owner) {
	phy_position_x = owner.sprite_x;
	phy_position_y = owner.sprite_y;
}

animation_ping_pong();
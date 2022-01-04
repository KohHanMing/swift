image_alpha = lerp(image_alpha,0,0.05);
if image_alpha <= 0.1 instance_destroy();

animation_ping_pong();
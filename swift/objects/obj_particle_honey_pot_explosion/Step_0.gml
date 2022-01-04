image_alpha -= 0.05;
if image_alpha <= 0 instance_destroy();

image_xscale = lerp(image_xscale,0,0.01);
image_yscale = lerp(image_yscale,0,0.01);

animation_ping_pong();
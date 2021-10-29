apply_vector(id,0.2,obj_player.direction);
phy_rotation = -obj_player.direction;

image_alpha -= 0.02;
if image_alpha <= 0 instance_destroy();

depth = -y-16;
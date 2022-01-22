if fading = true image_alpha -= 0.01;

if image_alpha <= 0 instance_destroy();

image_blend = merge_color(c_black,image_blend,0.99);

if y < y_start apply_vector(id,0.2,270);
else if collision_point(x, y, obj_hole, false, false) {
	apply_vector(id,0.2,270);
	image_alpha -= 0.1;
} else {
	phy_speed_y = 0;
}
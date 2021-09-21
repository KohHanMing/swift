//transparency

if collision_circle(x,y-32,15,obj_player,false,false) {
	image_alpha = 0.3;
} else {
	image_alpha = 1;
}
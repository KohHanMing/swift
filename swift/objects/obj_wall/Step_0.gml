//transparency

if collision_rectangle(x,y-sprite_height,x+sprite_width,y,obj_player,false,true) && obj_player.y < y {
	if image_alpha >= 0.3 image_alpha -= 0.1; //fade out
} else {
	if image_alpha <= 1 image_alpha += 0.1; //fade in
}
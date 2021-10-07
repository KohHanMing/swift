//transparency

if place_meeting(x,y,obj_player) && obj_player.y < y {
	if image_alpha >= 0.3 image_alpha -= 0.1; //fade out
} else {
	if image_alpha <= 1 image_alpha += 0.1; //fade in
}
////transparency

//var has_damageable_behind = 0
//with obj_damageable {
//	with other {
//		if collision_rectangle(x-32,y-sprite_height-32,x+sprite_width+32,y+32,other,false,true) && other.y < y has_damageable_behind = 1;
//	}
//}

//{
//	if has_damageable_behind {
//		if image_alpha >= 0.3 image_alpha -= 0.1; //fade out
//		} else {
//			if image_alpha <= 1 image_alpha += 0.1; //fade in
//		}
//	}

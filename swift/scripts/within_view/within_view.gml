function within_view(_inst){
	with(_inst) {
		
		var overlap = rectangle_in_rectangle(
			global.view_x,
			global.view_y,
			global.view_x + global.view_w,
			global.view_y + global.view_h,
			x - sprite_xoffset,
			y - sprite_yoffset,
			x - sprite_xoffset + sprite_width,
			y - sprite_yoffset + sprite_height
		);
		
		if overlap == 0 {
			return 0;
		} else {
			return 1;
		}
	}
}
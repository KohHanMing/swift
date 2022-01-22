/// @description Draw Wall Lighting

// Render Wall Lighting
draw_lighting(shadow_surface_wall);

// Darken on Pause
if obj_game.game_paused {
	darkness_multiplier = lerp(darkness_multiplier, 1/obj_game.ambient_darkness, 0.1);
	darkness_overlay_alpha = lerp(darkness_overlay_alpha, 0.5, 0.1);
} else {
	darkness_multiplier = lerp(darkness_multiplier, 1, 0.1);
	darkness_overlay_alpha = lerp(darkness_overlay_alpha, 0, 0.1);
}

draw_set_alpha(darkness_overlay_alpha);
draw_rectangle_color(global.view_x,global.view_y,global.view_x+global.view_w,global.view_y+global.view_h,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);
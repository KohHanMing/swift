/// @description Draw Cursor

// Cursor
if !surface_exists(cursor_surface) {
	cursor_surface = surface_create(view_wport[0],view_hport[0]);
}

surface_set_target(cursor_surface);
draw_clear_alpha(c_black,0);
draw_sprite(spr_crosshair,0,mouse_x,mouse_y);
surface_reset_target();
draw_surface(cursor_surface,0,0);

/// @description Pause

if keyboard_check_pressed(vk_escape) {
	paused = !paused;
	if paused == false {
		instance_activate_all();
		alarm[0] = 1;
		surface_free(paused_surf);
        paused_surf = -1;
    }
}

if paused == true {
	if !surface_exists(paused_surf) {
	    if paused_surf == -1 { 
			paused_surf = surface_create(room_width, room_height);
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
			with (all) {
				if phy_active == true phy_active = false;
			}
			instance_deactivate_all(true);
		}
	}
}
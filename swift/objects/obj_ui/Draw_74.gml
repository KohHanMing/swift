if !instance_exists(obj_player) exit;

// Vignette
gpu_set_blendmode_ext(bm_dest_colour, bm_zero); // Multiply Blend Mode
draw_sprite_stretched(spr_vignette, 0, 0, 0, global.gui_width, global.gui_height); // Draw Vignette
gpu_set_blendmode(bm_normal); // Reset Blend Mode
draw_sprite_stretched_ext(spr_vignette_red, 0, 0, 0, global.gui_width, global.gui_height, c_white, obj_player.damage_tint_scale); // Draw Base Vignette
draw_sprite_stretched_ext(spr_vignette_red, 0, 0, 0, global.gui_width, global.gui_height, c_white, 1-2*(obj_player.CURR_HEALTH/obj_player.MAX_HEALTH)); // Intensify According to Health
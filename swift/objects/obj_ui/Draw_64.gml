/// @description Draw GUI

if !instance_exists(obj_player) exit;

// Vignette
gpu_set_blendmode_ext(bm_dest_colour, bm_zero); // Multiply Blend Mode
draw_sprite_stretched(spr_vignette, 0, 0, 0, global.gui_width, global.gui_height); // Draw Vignette
gpu_set_blendmode(bm_normal); // Reset Blend Mode
draw_sprite_stretched_ext(spr_vignette_red, 0, 0, 0, global.gui_width, global.gui_height, c_white, obj_player.damage_tint_scale); // Draw Base Vignette
draw_sprite_stretched_ext(spr_vignette_red, 0, 0, 0, global.gui_width, global.gui_height, c_white, 1-2*(obj_player.CURR_HEALTH/obj_player.MAX_HEALTH)); // Intensify According to Health

// Draw UI Base
draw_sprite(spr_ui_base,0,UI_BASE_ANCHOR[0],UI_BASE_ANCHOR[1]);

// Create Mask
gpu_set_blendenable(false); // Disable Blending
gpu_set_colorwriteenable(false,false,false,true); // Enable only alpha channel to protect application surface
draw_set_alpha(0); // Set alpha to 0
draw_rectangle(0,0, global.gui_width,global.gui_height, false); // Draw an alpha 0 rectangle over the entire application surface
draw_set_alpha(1); // Reset alpha to 1
draw_sprite(spr_ui_base_mask,0,UI_BASE_ANCHOR[0],UI_BASE_ANCHOR[1]); // The mask area now has alpha of 1
gpu_set_blendenable(true); // Return to normal blending
gpu_set_colorwriteenable(true,true,true,true); // Return to normal color write

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); // Destination Alpha Mode
gpu_set_alphatestenable(true); // Read alpha from screen instead of from sprite

// Health
health_display = lerp(health_display,obj_player.CURR_HEALTH,0.5)
var health_display_width = (health_display/obj_player.MAX_HEALTH) * HEALTH_BAR_LENGTH
draw_sprite_part(spr_ui_health,0,0,0,health_display_width,sprite_get_height(spr_ui_health),HEALTH_BAR_ANCHOR[0],HEALTH_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_health,0,HEALTH_BAR_LENGTH,0,HEALTH_BAR_END_LENGTH,sprite_get_height(spr_ui_health),HEALTH_BAR_ANCHOR[0]+health_display_width,HEALTH_BAR_ANCHOR[1]);

// Energy
energy_display = lerp(energy_display,obj_player.CURR_ENERGY,0.5)
var energy_display_width = (energy_display/obj_player.MAX_ENERGY) * ENERGY_BAR_LENGTH
draw_sprite_part(spr_ui_energy,0,0,0,energy_display_width,sprite_get_height(spr_ui_energy),ENERGY_BAR_ANCHOR[0],ENERGY_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_energy,0,ENERGY_BAR_LENGTH,0,ENERGY_BAR_END_LENGTH,sprite_get_height(spr_ui_energy),ENERGY_BAR_ANCHOR[0]+energy_display_width,ENERGY_BAR_ANCHOR[1]);

// Dash
dash_display = lerp(dash_display,obj_player.CURR_DASH,0.5)
var dash_display_width = (dash_display/obj_player.MAX_DASH) * DASH_BAR_LENGTH
draw_sprite_part(spr_ui_dash,0,0,0,dash_display_width,sprite_get_height(spr_ui_dash),DASH_BAR_ANCHOR[0],DASH_BAR_ANCHOR[1]);
draw_sprite_part(spr_ui_dash,0,DASH_BAR_LENGTH,0,DASH_BAR_END_LENGTH,sprite_get_height(spr_ui_dash),DASH_BAR_ANCHOR[0]+dash_display_width,DASH_BAR_ANCHOR[1]);

// Restore Normal Drawing
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);


// Weapon Display
draw_sprite(spr_weapon_display,0,MELEE_WEAPON_DISPLAY_ANCHOR[0],MELEE_WEAPON_DISPLAY_ANCHOR[1]);
var display_center = [MELEE_WEAPON_DISPLAY_ANCHOR[0]+128,MELEE_WEAPON_DISPLAY_ANCHOR[1]+64];
weapon_display(obj_player.equipped_melee_weapon_display,display_center);

draw_sprite(spr_weapon_display,0,RANGED_WEAPON_DISPLAY_ANCHOR[0],RANGED_WEAPON_DISPLAY_ANCHOR[1]);
var display_center = [RANGED_WEAPON_DISPLAY_ANCHOR[0]+128,RANGED_WEAPON_DISPLAY_ANCHOR[1]+64];
weapon_display(obj_player.equipped_ranged_weapon_display,display_center);

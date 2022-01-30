draw_set_alpha(0.5);
if falling_time == 0 draw_sprite(spr_entity_shadow_medium,0,x,y) // Draw Shadow
draw_set_alpha(1);

draw_self();

var center = find_sprite_center(id);
if (CURR_HEALTH <= obj_player.equipped_melee_weapon_id.WEAPON_DAMAGE and falling_time == 0) {
	draw_sprite(spr_health_low,(current_time/500)%2,center[0],center[1]-sprite_height/2-4);
}

//Damage Tint
if damage_tint_time > 0 {
	var tint_factor = damage_tint_time/damage_tint_time_start;
	gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,tint_factor);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,tint_factor);
	gpu_set_blendmode(bm_normal);
	damage_tint_time -= 1;
}
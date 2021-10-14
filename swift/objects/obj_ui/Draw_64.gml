/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_ui_fullscreen,0 ,0, 0);

//Health
var health_length = sprite_get_width(spr_ui_health)*(obj_player.CURR_HEALTH / obj_player.MAX_HEALTH);
draw_sprite_part(spr_ui_health,1,0,0,health_length,sprite_get_height(spr_ui_health),HEALTH_BAR_OFFSET_X,HEALTH_BAR_OFFSET_Y);

var health_end_alpha = 0;
if (obj_player.CURR_HEALTH < obj_player.MAX_HEALTH) {
	health_end_alpha = 1;
} else {
	health_end_alpha = 0;
}

draw_sprite_ext(spr_ui_health_end, 1, HEALTH_BAR_OFFSET_X + health_length, HEALTH_BAR_OFFSET_Y,1,1,0,c_white,health_end_alpha);

//Energy
var energy_length = sprite_get_width(spr_ui_energy)*(obj_player.CURR_ENERGY / obj_player.MAX_ENERGY);
draw_sprite_part(spr_ui_energy,1,0,0,energy_length,sprite_get_height(spr_ui_energy),ENERGY_BAR_OFFSET_X,ENERGY_BAR_OFFSET_Y)

var energy_end_alpha = 0;
if (obj_player.CURR_ENERGY < obj_player.MAX_ENERGY and obj_player.CURR_ENERGY > 0) {
	energy_end_alpha = 1;
} else {
	energy_end_alpha = 0;
}

draw_sprite_ext(spr_ui_energy_end, 1, ENERGY_BAR_OFFSET_X + energy_length, ENERGY_BAR_OFFSET_Y,1,1,0,c_white,energy_end_alpha);


//Dash
draw_sprite_part(spr_ui_dash,1,0,0,sprite_get_width(spr_ui_dash)*(obj_player.CURR_DASH / obj_player.MAX_DASH),sprite_get_height(spr_ui_energy),DASH_BAR_OFFSET_X,DASH_BAR_OFFSET_Y)

      
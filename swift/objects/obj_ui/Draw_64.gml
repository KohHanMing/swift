/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_ui_base,0 ,0, 0);

draw_sprite_part(spr_ui_health,1,0,0,sprite_get_width(spr_ui_health)*(obj_player.CURR_HEALTH / obj_player.MAX_HEALTH),sprite_get_height(spr_ui_health),HEALTH_BAR_OFFSET_X,HEALTH_BAR_OFFSET_Y)
draw_sprite_part(spr_ui_energy,1,0,0,sprite_get_width(spr_ui_energy)*(obj_player.CURR_ENERGY / obj_player.MAX_ENERGY),sprite_get_height(spr_ui_energy),ENERGY_BAR_OFFSET_X,ENERGY_BAR_OFFSET_Y)
draw_sprite_part(spr_ui_dash,1,0,0,sprite_get_width(spr_ui_dash)*(obj_player.CURR_DASH / obj_player.MAX_DASH),sprite_get_height(spr_ui_energy),DASH_BAR_OFFSET_X,DASH_BAR_OFFSET_Y)

      
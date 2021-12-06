/// @description Temporary Way to Show Health Low

draw_self();

var center = find_sprite_center(id);
if CURR_HEALTH == 1 draw_sprite(spr_health_low,(current_time/500)%2,center[0],center[1]-sprite_height/2-4);
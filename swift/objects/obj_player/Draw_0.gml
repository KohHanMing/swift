draw_set_alpha(0.5);
if falling_time == 0 draw_sprite(spr_entity_shadow_medium,0,x,y) // Draw Shadow
draw_set_alpha(1);

draw_self(); // Draw normally
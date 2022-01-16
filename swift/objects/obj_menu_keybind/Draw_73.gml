draw_self();

draw_set_font(FONT);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x+sprite_width/2,y+sprite_height/2+text_offset,text+": "+key_to_name(variable_global_get(keybind)),FONT_SCALE,FONT_SCALE,0);
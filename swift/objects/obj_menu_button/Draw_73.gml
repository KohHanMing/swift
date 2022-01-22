draw_self();

draw_set_font(FONT);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x+sprite_width/2,y+sprite_height/2+text_offset,text,FONT_SCALE,FONT_SCALE,0);
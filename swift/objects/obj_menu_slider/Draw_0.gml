draw_self();

draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+sprite_width/2,y+sprite_height/2+text_offset,text + ": " + string(value));

var proportion = value / (slider_max - slider_min);
var slider_slider_width = sprite_get_width(spr_ui_slider_slider)
var slider_width = sprite_width - 2 * slider_padding;
draw_sprite_stretched(spr_ui_slider_slider,0,x+slider_padding+proportion*slider_width-slider_slider_width/2,y,slider_slider_width,sprite_height)
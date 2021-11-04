/// @description Temporary Way to Show Health Low
// DELETE ONCE WE ACTUALLY IMPLEMENT SOMETHING

draw_set_font(font_medium);
if CURR_HEALTH == 1 draw_text_color(x-10,y-40,"!!!",c_red,c_yellow,c_red,c_yellow,1);

draw_self();
draw_set_font(font_small);
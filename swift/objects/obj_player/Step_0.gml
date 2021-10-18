/// @description Insert description here
// You can write your code in this editor


switch (state) {
	case "normal": player_normal(); break;
	case "falling": player_falling(); break;
}

move_wrap(true, true, sprite_width/2);

event_inherited();

if damage_tint_time > 0 {
	image_blend = make_color_rgb(255, 255-damage_tint_time/(room_speed/2)*255, 255-damage_tint_time/(room_speed/2)*255);
	if damage_tint_time = 1 image_blend = c_white;
	draw_self();
	damage_tint_time -= 1;
}
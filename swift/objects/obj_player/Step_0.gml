/// @description Insert description here
// You can write your code in this editor


switch (state) {
	case "normal": player_normal(); break;
	case "falling": player_falling(); break;
}

move_wrap(true, true, sprite_width/2);


//facing direction
//Change sprite according to goal_direction
//Does not update when not moving

var weapon_angle;
if (instance_exists(obj_weapon_ranged)) {
	weapon_angle = obj_weapon_ranged.weapon_angle;
} else {
	weapon_angle = obj_weapon_melee.weapon_angle;	
}

show_debug_message(weapon_angle);
if (weapon_angle > 225 && weapon_angle < 315) sprite_index = spr_player_idle_down;
else if (weapon_angle > 45 && weapon_angle < 135) sprite_index = spr_player_idle_up;
else if (weapon_angle >= 135 && weapon_angle <= 225) sprite_index = spr_player_idle_left;
else sprite_index = spr_player_idle_right;



recharge_dash();

event_inherited();

if damage_tint_time > 0 {
	image_blend = make_color_rgb(255, 255-damage_tint_time/(room_speed/2)*255, 255-damage_tint_time/(room_speed/2)*255);
	if damage_tint_time = 1 image_blend = c_white;
	draw_self();
	damage_tint_time -= 1;
}
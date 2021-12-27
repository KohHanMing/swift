/// @description Insert description here
// You can write your code in this editor


switch (state) {
	case "normal": player_normal(); break;
	case "falling": player_falling(); break;
}

move_wrap(true, true, sprite_width/2);

var weapon_angle;
if (instance_exists(obj_weapon_ranged)) {
	weapon_angle = obj_weapon_ranged.weapon_angle;
} else {
	weapon_angle = obj_weapon_melee.weapon_angle;	
}

if (weapon_angle > 225 && weapon_angle < 315) sprite_index = spr_player_idle_down;
else if (weapon_angle > 45 && weapon_angle < 135) sprite_index = spr_player_idle_up;
else if (weapon_angle >= 135 && weapon_angle <= 225) sprite_index = spr_player_idle_left;
else sprite_index = spr_player_idle_right;


//damage tint
damage_tint_scale = 0;
if damage_tint_time > 0 {
	damage_tint_scale = damage_tint_time/damage_tint_time_start;
	image_blend = make_color_rgb(255, 255-damage_tint_time/damage_tint_time_start*255, 255-damage_tint_time/damage_tint_time_start*255);
	if damage_tint_time = 1 image_blend = c_white;
	draw_self();
	damage_tint_time -= 1;
}

recharge_dash();

event_inherited();

audio_listener_position(x,y,0);

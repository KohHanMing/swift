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

var weapon_angle = obj_weapon.weapon_angle;

show_debug_message(weapon_angle);
if (weapon_angle > 225 && weapon_angle < 315) sprite_index = spr_player_idle_down;
else if (weapon_angle > 45 && weapon_angle < 135) sprite_index = spr_player_idle_up;
else if (weapon_angle >= 135 && weapon_angle <= 225) sprite_index = spr_player_idle_left;
else sprite_index = spr_player_idle_right;



recharge_dash();

event_inherited();

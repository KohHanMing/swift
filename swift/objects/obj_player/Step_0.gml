switch (state) {
	case "normal": player_normal(); break;
	case "falling": player_falling(); break;
}

move_wrap(true, true, sprite_width/2);

// Weapon Change

switch keyboard_lastchar {
	case "1":
		equipped_melee_weapon = obj_blade;
		update_equipped_weapons();
		break;
	case "2":
		equipped_ranged_weapon = obj_honey_badger;
		update_equipped_weapons();
		break;
	case "3":
		equipped_melee_weapon = obj_axe;
		update_equipped_weapons();
		break;
	case "4":
		equipped_ranged_weapon = obj_deadeye;
		update_equipped_weapons();
		break;
	case "5":
		equipped_melee_weapon = obj_subwoofer;
		update_equipped_weapons();
		break;
	case "6":
		equipped_ranged_weapon = obj_honey_pot;
		update_equipped_weapons();
		break;
}

// Face Direction based on Weapon Angle
var weapon_angle = current_weapon_id.weapon_angle;
if (weapon_angle > 225 && weapon_angle < 315) facing = "down";
else if (weapon_angle > 45 && weapon_angle < 135) facing = "up";
else if (weapon_angle >= 135 && weapon_angle <= 225) facing = "left";
else facing = "right";

// Sprite Control
sprite_index = asset_get_index("spr_player_" + action + "_" + facing);

// Weapon Cooldowns
if melee_weapon_id.cooldown > 0 melee_weapon_id.cooldown -= 1;
if ranged_weapon_id.cooldown > 0 ranged_weapon_id.cooldown -= 1;

// Swaps
swap_timer -= 1; // swap_timer is reduced by 1 per step.

// Control Enabled
if current_weapon_id.DISABLES_CONTROL and instance_exists(current_weapon_id.previous_projectile) {
	control_enabled = false;
} else control_enabled = true;


// Damage Tint
damage_tint_scale = 0;
if damage_tint_time > 0 {
	damage_tint_scale = damage_tint_time/damage_tint_time_start;
	image_blend = make_color_rgb(255, 255-damage_tint_time/damage_tint_time_start*255, 255-damage_tint_time/damage_tint_time_start*255);
	if damage_tint_time = 1 image_blend = c_white;
	damage_tint_time -= 1;
}

recharge_dash();

event_inherited();

audio_listener_position(x,y,0);

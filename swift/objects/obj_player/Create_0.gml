/// @description Initialize Player

// Inherit parent event
event_inherited();

// Event Enum
DEATH = 0;
FIRE_WEAPON = 2;

// Constants
ACCELERATION_PX_PER_FRAME = 2.5;
MAX_SPEED_PX_PER_FRAME = 4;
DASH_ACCELERATION_INCREASE = 0.4;
DASH_TIME = room_speed/5; // Dash lasts 1/5 of a second

DASH_UNIT = 100;
DASH_RECHARGE_RATE = DASH_UNIT / (room_speed * 0.75); //Recharges every 1/2 second
CURR_DASH = DASH_UNIT * 3;
MAX_DASH = DASH_UNIT * 3;

CURR_HEALTH = 100;
MAX_HEALTH = 100;
FALL_DAMAGE = 20;

ENERGY_INCREMENT = 1;
ENERGY_RECHARGE_RATE = room_speed * 1.5
CURR_ENERGY = 10;
MAX_ENERGY = 10;
alarm[2] = ENERGY_RECHARGE_RATE; // Start recharging infinitely

SWAP_COOLDOWN = room_speed; // Swap Cooldown 
INSTANT_SWAP_MIN = room_speed/4; // Minimum time required for instant swap to work (in frames).
INSTANT_SWAP_RANGE = room_speed/2; // Length of instant swap window (in frames).

//HIT_SFX = sfx_player_hit;

// Initialize Weapons
equipped_weapon = "melee";
equipped_melee_weapon = obj_blade;
equipped_ranged_weapon = obj_honey_badger;
current_weapon_id = noone; // ID of Current Weapon
melee_weapon_id = instance_create_layer(x,y,"Instances",equipped_melee_weapon); // ID of Melee Weapon
ranged_weapon_id = instance_create_layer(x,y,"Instances",equipped_ranged_weapon); // ID of Ranged Weapon
update_equipped_weapons(); // Run Update Equipped Weapons event.

// Variables

// Movement
moving = false;
dashing = false;
w_key_pressed = false;
a_key_pressed = false;
s_key_pressed = false;
d_key_pressed = false;
facing = "down";
control_enabled = true;

// Player State
state = "normal";
action = "idle";

// Weapons
swap_timer = 0;

// Hole
res_x = 0; // Respawn coordinate after falling into hole
res_y = 0; // Respawn coordinate after falling into hole

// Methods
function swap_failed() {
	audio_play_sound(sfx_swap_fail,99,false);
}

function change_weapon() {
	
	if (swap_timer > 0 or !control_enabled) {
		swap_failed();
		return; // Exit Event if Swap Fail
	}
	
	var _previous_melee_weapon_id = melee_weapon_id;
	var _previous_ranged_weapon_id = ranged_weapon_id;
	var _previous_weapon_id = current_weapon_id;
	
	switch keyboard_lastchar {		
		
	case "1":
		equipped_melee_weapon = obj_blade;
		equipped_weapon = "melee";
		break;
	case "2":
		equipped_ranged_weapon = obj_honey_badger;
		equipped_weapon = "ranged";
		break;
	case "3":
		equipped_melee_weapon = obj_axe;
		equipped_weapon = "melee";
		break;
	case "4":
		equipped_ranged_weapon = obj_deadeye;
		equipped_weapon = "ranged";
		break;
	case "5":
		equipped_melee_weapon = obj_subwoofer;
		equipped_weapon = "melee";
		break;
	case "6":
		equipped_ranged_weapon = obj_honey_pot;
		equipped_weapon = "ranged";
		break;
	}	
	
	swap_timer = SWAP_COOLDOWN;
	update_equipped_weapons();
	
	if (current_weapon_id == _previous_melee_weapon_id or current_weapon_id == _previous_ranged_weapon_id) and current_weapon_id != _previous_weapon_id {
		with(current_weapon_id) event_user(WEAPON_QUICKSWAPPED_IN);
	}
	
}

function attempt_quickswap(){
	// Toggle equipped_weapon

	if (swap_timer > 0) {
		play_sfx(sfx_swap_fail, false);
		return; // Exit if swap_timer is active.
	}

	swap_timer = SWAP_COOLDOWN;

	if equipped_weapon == "melee" equipped_weapon = "ranged";
	else equipped_weapon = "melee"

	update_equipped_weapons();
	with(current_weapon_id) event_user(WEAPON_QUICKSWAPPED_IN);
	
}

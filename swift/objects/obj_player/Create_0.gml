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

/*

Terminology:
- Equipped: One of the weapons in quickswap
- Current: The weapon in the hand now

*/

unlocked_melee_weapons = ds_list_create();
unlocked_ranged_weapons = ds_list_create();

unlock_weapon(obj_blade);
unlock_weapon(obj_axe);
unlock_weapon(obj_subwoofer);

unlock_weapon(obj_honey_badger);
unlock_weapon(obj_deadeye);
unlock_weapon(obj_honey_pot);

current_weapon = -1;
equipped_melee_weapon = -1;
equipped_ranged_weapon = -1;
current_weapon_id = noone; // ID of Current Weapon
equipped_melee_weapon_id = noone; // ID of Melee Weapon
equipped_ranged_weapon_id = noone; // ID of Ranged Weapon

equip_weapon(obj_blade);
equip_weapon(obj_honey_badger);
change_weapon(equipped_melee_weapon);

swap_timer = 0;

// Variables

// Movement
moving = false;
dashing = false;
facing = "down";
control_enabled = true;

// Player State
state = "normal";
action = "idle";

// Hole
res_x = 0; // Respawn coordinate after falling into hole
res_y = 0; // Respawn coordinate after falling into hole

// Methods
function swap_failed() {
	audio_play_sound(sfx_swap_fail,99,false);
}

function equip_other_weapon() {
	
	if (swap_timer > 0 or !control_enabled) {
		swap_failed();
		return; // Exit Event if Swap Fail
	}
	
	switch keyboard_lastchar {		
		
	case "1":
		change_weapon(obj_blade);
		break;
	case "2":
		change_weapon(obj_honey_badger);
		break;
	case "3":
		change_weapon(obj_axe);
		break;
	case "4":
		change_weapon(obj_deadeye);
		break;
	case "5":
		change_weapon(obj_subwoofer);
		break;
	case "6":
		change_weapon(obj_honey_pot);
		break;
	}	
	
	swap_timer = SWAP_COOLDOWN;
	
}

function attempt_quickswap(){
	// Toggle equipped_weapon

	if (swap_timer > 0) {
		play_sfx(sfx_swap_fail, false);
		return; // Exit if swap_timer is active.
	}

	switch (current_weapon_type) {
		case "melee":
			change_weapon(equipped_ranged_weapon);
			break;
		case "ranged":
			change_weapon(equipped_melee_weapon);
			break;
	}
	
	swap_timer = SWAP_COOLDOWN;
	
}

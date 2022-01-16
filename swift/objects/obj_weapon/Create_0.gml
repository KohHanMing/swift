/// @description Initialize Variables

// Event Enum
COOLDOWN_NOT_READY = 0;
NOT_ENOUGH_ENERGY = 1;
FIRE_WEAPON = 2;
FINISH_FIRING = 3;
WEAPON_SWAPPED_IN = 4;
WEAPON_QUICKSWAPPED_IN = 5;

// Constants

// Weapon pivot point differs from player centre. Offset accordingly
WEAPON_OFFSET_FORWARD = 0; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
WEAPON_FLOAT_AMPLITUDE = 2;
WEAPON_FLOAT_FREQUENCY = 1/4;
ROTATES = true;

ATTACK_COOLDOWN = room_speed // Attacks 1 time per second

// Energy usage
ENERGY_COST = 0; // Default is 0

// Weapon Presets 
SPR_WEAPON_IDLE_SIDE = spr_weapon_default; // MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_FIRE_SIDE = spr_weapon_default; // MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_CROSSHAIR = spr_weapon_default_crosshair;
SFX_WEAPON = -1;

DISABLES_CONTROL = false;

// Projectile Presets
WEAPON_PROJECTILE = obj_player_projectile; // MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 0; // Forward is Positive
PROJECTILE_OFFSET_SIDE = 0; // Right is Positive

// Variables
firing = false;
weapon_angle = 0; // Weapon Angle in Degrees
cooldown = 0 // Current Attack Cooldown (in Frames)

// Push Self to Silhouette Array
add_to_silhouette_array(id);

// Methods
function attempt_to_fire() {
	// Attempt to Fire
	if !obj_player.control_enabled return;

	if (firing) {
		// Cooldown not ready
		event_user(COOLDOWN_NOT_READY);
	}

	else if (obj_player.CURR_ENERGY < ENERGY_COST) {
		// Not enough energy
		event_user(NOT_ENOUGH_ENERGY);
	}

	else {
		// Otherwise, attack
		event_user(FIRE_WEAPON);
	}
}
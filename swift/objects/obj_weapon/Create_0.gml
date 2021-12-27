/// @description Initialize Variables

// Constants

// Weapon pivot point differs from player centre. Offset accordingly
WEAPON_OFFSET_FORWARD = 0; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

ATTACK_COOLDOWN = room_speed // Attacks 1 time per second

// Energy usage
ENERGY_COST = 0; // Default is 0

// Weapon Presets 
SPR_WEAPON_IDLE_SIDE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_FIRE_SIDE = spr_weapon_default; //MUST INITIALISE IN CHILD WEAPON
SPR_WEAPON_CROSSHAIR = spr_weapon_default_crosshair;
SFX_WEAPON = -1;

// Projectile Presets
WEAPON_PROJECTILE = obj_player_projectile; //MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 0; // Forward is Positive
PROJECTILE_OFFSET_SIDE = 0; // Right is Positive

// Variables
firing = false;
weapon_angle = 0; // Weapon Angle in Degrees
cooldown = 0 // Current Attack Cooldown (in Frames)


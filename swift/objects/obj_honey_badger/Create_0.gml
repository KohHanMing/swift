// Inherit from parent
event_inherited();

// Weapon Information
WEAPON_NAME = "Honey Badger";
WEAPON_ID = "honey_badger";

// Sprites
SPR_WEAPON_DISPLAY = spr_honey_badger_idle_side;
SPR_WEAPON_CROSSHAIR = spr_honey_badger_crosshair;

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

// Weapon Stats
ENERGY_COST = 1;
ATTACK_COOLDOWN = room_speed/4; // Fires 4 times per second

// Projectile Presets
WEAPON_PROJECTILE = obj_honey_badger_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;

// Weapon Variables
powering_down = false;
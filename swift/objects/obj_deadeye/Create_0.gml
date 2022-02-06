// Inherit from parent
event_inherited();

// Weapon Information
WEAPON_NAME = "Deadeye";
WEAPON_ID = "deadeye";

// Sprites
SPR_WEAPON_DISPLAY = spr_deadeye_idle_side;
SPR_WEAPON_CROSSHAIR = spr_deadeye_crosshair;

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

// Weapon Stats
ENERGY_COST = 5;
ATTACK_COOLDOWN = 2 * room_speed; // Fires 0.5 times per second

// Projectile Presets
WEAPON_PROJECTILE = obj_deadeye_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;
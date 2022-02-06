// Inherit from parent
event_inherited();

// Weapon Information
WEAPON_NAME = "Honey Pot";
WEAPON_ID = "honey_pot";

// Sprites
SPR_WEAPON_DISPLAY = spr_honey_pot_idle_side;
SPR_WEAPON_CROSSHAIR = spr_honey_pot_crosshair;

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

// Weapon Stats
ENERGY_COST = 2;
ATTACK_COOLDOWN = room_speed; // Fires 1 time per second

// Projectile Presets
WEAPON_PROJECTILE = obj_honey_pot_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;
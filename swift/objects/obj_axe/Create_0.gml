// Inherit from parent
event_inherited();

WEAPON_NAME = "Axe";

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
ROTATION_OFFSET = 15;

ATTACK_COOLDOWN = 2 * room_speed // Attacks 0.5 time per second

// Weapon presets 
SPR_WEAPON_IDLE = spr_axe_idle;
SPR_WEAPON_FIRE = spr_axe_fire;

SPR_WEAPON_CROSSHAIR = spr_axe_crosshair;
SPR_WEAPON_DISPLAY = spr_axe_idle;

// Projectile presets
WEAPON_PROJECTILE = obj_axe_melee_hitbox;
PROJECTILE_OFFSET_FORWARD = 0;
PROJECTILE_OFFSET_SIDE = 0;
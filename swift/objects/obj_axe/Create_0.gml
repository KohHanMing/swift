// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
ROTATION_OFFSET = 15;

ATTACK_COOLDOWN = 2 * room_speed // Attacks 0.5 time per second

// Weapon presets 
SPR_WEAPON_IDLE = spr_axe_idle;
SPR_WEAPON_FIRE = spr_axe_fire;
image_speed = 0; // Temporary

SPR_WEAPON_CROSSHAIR = spr_axe_crosshair;

// Projectile presets
WEAPON_PROJECTILE = obj_axe_melee_hitbox;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;
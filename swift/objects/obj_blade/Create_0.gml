// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 10; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
ROTATION_OFFSET = 45;

ATTACK_COOLDOWN = room_speed // Attacks 1 time per second

// Weapon presets 
SPR_WEAPON_IDLE = spr_blade_idle;
SPR_WEAPON_FIRE = spr_blade_fire;

// Projectile presets
WEAPON_PROJECTILE = obj_blade_melee_hitbox;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;
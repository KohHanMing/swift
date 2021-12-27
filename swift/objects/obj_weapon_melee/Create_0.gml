// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 0; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive

ATTACK_COOLDOWN = room_speed // Attacks 1 time per second
ROTATION_OFFSET = 0;

// Weapon presets 
SPR_WEAPON_IDLE = spr_weapon_melee_idle;
SPR_WEAPON_FIRE = spr_weapon_melee_fire;

SFX_WEAPON = sfx_player_melee;

// Projectile presets
WEAPON_PROJECTILE = obj_weapon_melee_melee_hitbox; // MUST INITIALISE IN CHILD WEAPON
PROJECTILE_OFFSET_FORWARD = 0;
PROJECTILE_OFFSET_SIDE = 0;